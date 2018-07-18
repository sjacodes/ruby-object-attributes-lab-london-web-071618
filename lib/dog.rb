class Dog
  

  
  
  
  
  
end
  
  
  
  context 'with names' do
    describe '#name=' do
      it 'writes the name of the dog to an instance variable @name' do
        fido = Dog.new
        fido.name = "Fido"

        expect(fido.instance_variable_get(:@name)).to eq("Fido")
      end
    end

    describe '#name' do
      it 'reads the name of the dog from an instance variable @name' do
        fido = Dog.new
        fido.instance_variable_set(:@name, "Fido")

        expect(fido.name).to eq("Fido")
      end
    end
  end

  context 'with breeds' do
    describe '#breed=' do
      it 'writes the breed of the dog to an instance variable @breed' do
        snoopy = Dog.new
        snoopy.breed = "Beagle"

        expect(snoopy.instance_variable_get(:@breed)).to eq("Beagle")
      end
    end

    describe '#breed' do
      it 'reads the breed of the dog from an instance variable @breed' do
        snoopy = Dog.new
        snoopy.instance_variable_set(:@breed, "Beagle")

        expect(snoopy.breed).to eq("Beagle")
      end
    end
  end
end
