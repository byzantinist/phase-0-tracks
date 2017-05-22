application = {
"name" => "Eric Chiang",
"address" => "My home address",
"email" => "email@whatever.com",
"phone" => "111-1111",
"Fave shade of blue" => "navy",
"paisley" => "false",
"chevron" => "false",
"photorealistic_woodsy" => "true",
"abstract_woodsy" => "true",
"ombre" => "So last season"
}

p application
p application["ombre"]
application[:name] + application[:address]
p application[:name] + application[:address]