require "twilio_with_thinq/version"
require "twilio-ruby"

module TwilioWithThinq

  # The main twilio wrapper class that inegrates thinQ.
  class TwilioWrapper
    TWIML_RESOURCE_URL = "http://cris.viralearnings.com/twiml/get_response"

    attr_accessor :client, :customer_number, :twilio_account_sid, :twilio_account_token, :twilio_phone_number, :callback_type, :callback_details

    def initialize(customer_number, twilio_account_sid, twilio_account_token, twilio_phone_number)
      @customer_number = customer_number
      @twilio_account_sid = twilio_account_sid
      @twilio_account_token = twilio_account_token
      @twilio_phone_number = twilio_phone_number

      @client = Twilio::REST::Client.new twilio_account_sid, twilio_account_token
    end

    def isClientValid?
        !@client.nil? and !@client.account.nil?
    end

    def call
        if !self.isClientValid?
          return "Invalid Twilio Account details."
        end

        begin
          @call = @client.account.calls.create({:to => @customer_number,
                                                :from => @twilio_phone_number,
                                                :url => TWIML_RESOURCE_URL})
          return  @call.sid
        rescue Exception => e
          return e.message
        end
    end

  end
end
