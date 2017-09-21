class Transfer
  attr_reader :sender, :receiver
  attr_accessor :amount, :status

def initialize(sender, receiver, amount=0, status="pending")
@sender = sender
@receiver = receiver
@amount = amount
@status = status
end
def valid?
  sender.valid? && receiver.valid?
  # your code here
end
def execute_transaction
  sender.balance = sender.balance - amount
  receiver.balance = receiver.balance + amount
  self.status = "complete"
  
end
end
