require 'spec_helper'

describe Locomotive::LiquidExtensions::Filters::UrlEncode do

  include Locomotive::LiquidExtensions::Filters::UrlEncode

  it 'should encode spaces plus signs, even though that is against the spec' do
    expect(url_encode("spaces are plus signs")).to eq "spaces+are+plus+signs"
  end

  it 'should encode special url chars' do
    expect(url_encode(";\\/?:@&=+$,[]!~*'()#")).to eq "%3B%5C%2F%3F%3A%40%26%3D%2B%24%2C%5B%5D%21%7E%2A%27%28%29%23"
  end

  it 'should NOT encode normal url chars' do
    expect(url_encode("-_.abcABC123")).to eq "-_.abcABC123"
  end

end

