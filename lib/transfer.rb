class Transfer
  attr_reader :sender, :receiver
  attr_accessor :amount, :status, :executed


def initialize(sender, receiver, amount=0, status="pending")
@sender = sender
@receiver = receiver
@amount = amount
@status = status
@executed = false
end
def valid?
  sender.valid? && receiver.valid?
  # your code here
end

def execute_transaction
  if valid? && sender.balance > amount && self.status == "pending"
  sender.balance = sender.balance - self.amount
  receiver.balance = receiver.balance + self.amount
  self.status = "complete"
else
  self.status = "rejected"
  "Transaction rejected. Please check your account balance."
end
end
def reverse_transfer
  if valid? && receiver.balance > amount && self.status == "complete"
    sender.balance = sender.balance + self.amount
    receiver.balance = receiver.balance - self.amount
    self.status = "reversed"
  end
end
end
