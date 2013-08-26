require '../pi_piper/lib/pi_piper.rb'
include PiPiper

describe 'pi_piper' do
  describe "when in i2c block" do
    it "should call i2c_begin on platform driver" do
      driver = double "driver"
      expect(driver).to receive(:i2c_begin)

      Platform.driver = driver
      I2C.begin do
      end
    end
  end
end