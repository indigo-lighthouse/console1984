module Console1984::ProtectedContext
  # Protect the code to show inspected objects too. This method is invoked
  # for showing returned objects in the console
  def inspect_last_value
    Console1984.supervisor.execute do
      super
    end
  end
end