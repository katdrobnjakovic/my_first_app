class AddStartDateToResumeEntries < ActiveRecord::Migration
  def change
    add_column :resume_entries, :start_date, :date
  end

  #run the migration - put it in up 
  #run code during rollback - put it in down 

end
