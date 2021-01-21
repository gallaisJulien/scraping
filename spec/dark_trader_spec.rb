require 'rspec'


describe scraping do
  it "if crypto_array is a array"
    

    expect(scraping('https://coinmarketcap.com/all/views/all/')).to eq(Array)  
  end  
end