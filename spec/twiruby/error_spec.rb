require "spec_helper"

describe TwiRuby::Error do
  describe ".type" do
    it "return TwiRuby::Error::NotModified" do
      expect(TwiRuby::Error.type(304)).to be TwiRuby::Error::NotModified
    end

    it "return TwiRuby::Error::BadRequest" do
      expect(TwiRuby::Error.type(400)).to be TwiRuby::Error::BadRequest
    end

    it "return TwiRuby::Error::Unauthorized" do
      expect(TwiRuby::Error.type(401)).to be TwiRuby::Error::Unauthorized
    end

    it "return TwiRuby::Error::Forbidden" do
      expect(TwiRuby::Error.type(403)).to be TwiRuby::Error::Forbidden
    end

    it "return TwiRuby::Error::NotFound" do
      expect(TwiRuby::Error.type(404)).to be TwiRuby::Error::NotFound
    end

    it "return TwiRuby::Error::NotAcceptable" do
      expect(TwiRuby::Error.type(406)).to be TwiRuby::Error::NotAcceptable
    end

    it "return TwiRuby::Error::Gone" do
      expect(TwiRuby::Error.type(410)).to be TwiRuby::Error::Gone
    end

    it "return TwiRuby::Error::EnhanceYourCalm" do
      expect(TwiRuby::Error.type(420)).to be TwiRuby::Error::EnhanceYourCalm
    end

    it "return TwiRuby::Error::UnprocessableEntity" do
      expect(TwiRuby::Error.type(422)).to be TwiRuby::Error::UnprocessableEntity
    end

    it "return TwiRuby::Error::TooManyRequests" do
      expect(TwiRuby::Error.type(429)).to be TwiRuby::Error::TooManyRequests
    end

    it "return TwiRuby::Error::InternalServerError" do
      expect(TwiRuby::Error.type(500)).to be TwiRuby::Error::InternalServerError
    end

    it "return TwiRuby::Error::BadGateway" do
      expect(TwiRuby::Error.type(502)).to be TwiRuby::Error::BadGateway
    end

    it "return TwiRuby::Error::ServiceUnavailable" do
      expect(TwiRuby::Error.type(503)).to be TwiRuby::Error::ServiceUnavailable
    end

    it "return TwiRuby::Error::GatewayTimeout" do
      expect(TwiRuby::Error.type(504)).to be TwiRuby::Error::GatewayTimeout
    end
  end
end
