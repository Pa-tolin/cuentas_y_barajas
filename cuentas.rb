# Paso 1
class Usuario
    attr_accessor :nombre, :cuenta_bancaria
    def initialize(nombre,cuenta_bancaria)
        @nombre = nombre
        @cuenta_bancaria = cuenta_bancaria
    end

# Punto 6
    def saldo_total
        total = 0
        @cuenta_bancaria.map {|x| x.saldo}.sum
    end
end

# Paso 1,2 y 3
class CuentaBancaria
    attr_accessor :nombre_banco, :numero_cuenta, :saldo
    def initialize (nombre_banco, numero_cuenta, saldo = 0)
        @nombre_banco = nombre_banco
        @numero_cuenta = numero_cuenta
        @saldo = saldo
    end
     
    def transferir (monto, cuenta_destino)
        @saldo -= monto 
        cuenta_destino.saldo += monto 
    end
 end
 
 # Punto 4
 cuenta1 = CuentaBancaria.new("Banco Estado", 209132485,10000)
 cuenta2 = CuentaBancaria.new("Banco Scotiabank", 69701558, 5000)
 cuenta3 = CuentaBancaria.new("Banco Falabella", 186376420, 5000)

 cuenta2.transferir(5000, cuenta3)
 
 puts cuenta2.saldo
 puts cuenta3.saldo
 
# Punto 5
 usuario1 = Usuario.new("Patty Ojier", [cuenta1, cuenta2])
 usuario2 = Usuario.new("Boris Arco", [cuenta3])

# Punto 6
puts usuario1.saldo_total
 
 