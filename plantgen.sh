sed "s/my_plant/$1/g" << EOF
- platform: mqtt
  name: my_plant_moisture
  state_topic: /plants/my_plant
  value_template: '{{ value_json.moisture }}'
- platform: mqtt
  name: my_plant_battery
  state_topic: /plants/my_plant
  value_template: '{{ value_json.battery }}'
- platform: mqtt
  name: my_plant_temperature
  state_topic: /plants/my_plant
  value_template: '{{ value_json.temperature }}'
- platform: mqtt
  name: my_plant_conductivity
  state_topic: /plants/my_plant
  value_template: '{{ value_json.conductivity }}'
- platform: mqtt
  name: my_plant_brightness
  state_topic: /plants/my_plant
  value_template: '{{ value_json.brightness }}'
EOF

# plants/lime/ {"brightness": 58, "conductivity": 653, "timestamp": "2017-09-16T19:42:43.325259", "battery": 92, "temperature": "12.6", "moisture": 45}
