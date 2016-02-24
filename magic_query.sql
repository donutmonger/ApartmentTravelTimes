SELECT day_of_week, leave_time, l1.name as origin, l2.name as destination, avg(travel_time) FROM travel_times as tt JOIN locations as l1 ON tt.origin_id=l1.id JOIN locations as l2 ON tt.destination_id=l2.id GROUP BY day_of_week, leave_time, origin, destination ORDER BY leave_time, destination;
