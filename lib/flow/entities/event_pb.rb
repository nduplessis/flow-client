# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: flow/entities/event.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("flow/entities/event.proto", :syntax => :proto3) do
    add_message "flow.entities.Event" do
      optional :type, :string, 1
      optional :transaction_id, :bytes, 2
      optional :transaction_index, :uint32, 3
      optional :event_index, :uint32, 4
      optional :payload, :bytes, 5
    end
  end
end

module Entities
  Event = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("flow.entities.Event").msgclass
end
