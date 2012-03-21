class Import
  @queue = :sleep

  def self.perform
    sleep 3
  end
end
