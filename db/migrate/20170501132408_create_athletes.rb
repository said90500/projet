class CreateAthletes < ActiveRecord::Migration
  def change
    create_table :athletes do |t|
      t.date,cardio,sexe,id_town,id_group,id_seance,category :last_name,first_name,address_num,address_street,CP,phone,birthday

      t.timestamps
    end
  end
end
