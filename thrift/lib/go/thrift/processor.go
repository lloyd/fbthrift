/*
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements. See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership. The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License. You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied. See the License for the
 * specific language governing permissions and limitations
 * under the License.
 */

package thrift

// Processor defines the functions a processor object must implement
// to perform I/O and processing of a input message
type Processor interface {
	Process(iprot, oprot Protocol) (bool, Exception)
	GetProcessorFunction(name string) (ProcessorFunction, bool)
}

// ProcessorFunction is a generic object that processes part of the input
// handed to it by a Processor before writing to the outputstream
type ProcessorFunction interface {
	// Simple inline process function that performs Read(), Run() and Write()
	// on a single gofunc serially.
	//
	// Returns a boolean which is true when the exchange was processed correctly
	// and the protocol is respected, and an optional exception.
	// if Process returns false, it implies that the protocol has been violated
	// and the connection should be closed.
	// if Process returns true, the connection may be kept alive, and exception
	// may contain an application level thrift error (i.e. unsupported message)
	Process(seqId int32, in, out Protocol) (bool, Exception)

	// Read a serializable message from the input protocol.
	Read(seqId int32, iprot Protocol) (Struct, Exception)
	// Process a message handing it to the client handler.
	Run(seqId int32, args Struct) (WritableStruct, ApplicationException)
	// Write a serializable responsne
	Write(seqId int32, result WritableStruct, oprot Protocol) Exception
}
