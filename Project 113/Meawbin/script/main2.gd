extends Node2D

var text = ""
var wrong = ["Are you sure?","Wrong, try again.","Meow.","Nope.","Nah","I'm hungry.","Are you serious?","What?","Wrong.","Wrong, hurry up!"]
var word_list =  [['เถียง,โต้แย้ง', 'argue'], ['ละทิ้ง', 'abandon'], ['เก่าแก่,โบราณ', 'ancient'], ['ผู้ใหญ่', 'adult'], ['เพิ่ม', 'add'], ['อึดอัด', 'awkward'], ['อีกครั้ง', 'again'], ['เอาชนะ', 'beat'], ['สร้าง', 'build'], ['น่าเบื่อ', 'boring'], ['รู้สึกเบื่อ', 'bored'], ['กลายเป็น', 'become'], ['ข้างหลัง,เบื้องหลัง', 'behind'], ['เรือ', 'boat'], ['เผา', 'burn'], ['เนย', 'butter'], ['ขนมปัง', 'bread'], ['สีน้ำตาล', 'brown'], ['มะเร็ง,ราศีกรกฎ', 'cancer'], ['สร้าง', 'create'], ['อาชญากรรม', 'crime'], ['การเตือน', 'caution'], ['เซลล์,กรงขัง', 'cell'], ['ทำให้สำเร็จ,สำเร็จ', 'complete'], ['ระมัดระวัง', 'careful'], ['ตรวจสอบ', 'check'], ['ถูกต้อง', 'correct'], ['ร่องรอย,เบาะแส', 'clue'], ['สับสน', 'confuse'], ['ข้อคิดเห็น', 'comment'], ['ค้นพบ', 'discover'], ['การตัดสินใจ', 'decision'], ['สิ้นหวัง', 'despair'], ['เหตุการณ์', 'event'], ['รายได้,ได้รับ', 'earn'], ['หลักฐาน', 'evidence'], ['ขยาย,ทำให้กว้างขึ้น', 'expand'], ['ออกกำลังกาย', 'exercise'], ['ใหญ่', 'enormous'], ['สูญพันธุ์', 'extinct'], ['หลบหนี', 'escape'], ['อธิบาย', 'explain'], ['ตัวอย่าง', 'example'], ['ใบหน้า', 'face'], ['ตก,หล่น', 'fall'], ['โด่งดัง,มีชื่อเสียง', 'famous'], ['เกษตรกร', 'farmer'], ['ขนนก', 'feather'], ['ต่อสู้', 'fight'], ['ธง', 'flag'], ['แบน,ราบ', 'flat'], ['พื้น', 'floor'], ['ติดตาม', 'follow'], ['สดชื่น,ใหม่', 'fresh'], ['ผลไม้', 'fruit'], ['สวน', 'garden'], ['เด็กผู้หญิง', 'girl'], ['ปืน', 'gun'], ['ของขวัญ,พรสวรรค์', 'gift'], ['แก๊ส', 'gas'], ['สีเทา', 'gray'], ['ผม', 'hair'], ['ครึ่งหนึ่ง', 'half'], ['หล่อ', 'handsome'], ['มีความสุข', 'happy'], ['ยาก', 'hard'], ['หัว', 'head'], ['หัวใจ', 'heart'], ['ได้ยิน', 'hear'], ['ช่วยเหลือ', 'help'], ['สูง', 'high'], ['ประวัติศาสตร์', 'history'], ['ความหวัง', 'hope'], ['โรงพยาบาล', 'hospital'], ['โรงแรม', 'hotel'], ['คน', 'human'], ['สามี', 'husband'], ['ม้า', 'horse'], ['น้ำแข็ง', 'ice'], ['แมลง', 'insect'], ['เตารีด', 'iron'], ['เกาะ', 'island'], ['คนโง่', 'idiot'], ['ละเลย,ไม่สนใจ', 'ignore'], ['แยม', 'jam'], ['งาน', 'job'], ['เข้าร่วม', 'join'], ['กระโดด', 'jump'], ['เพิ่งจะ', 'just'], ['แมงกระพรุน', 'jellyfish'], ['อิจฉา', 'jealous'], ['ขยะ', 'junk'], ['ลักพาตัว', 'kidnap'], ['ตับ', 'kidney'], ['กรรม', 'karma'], ['ยืม', 'lend'], ['ซื่อสัตย์', 'loyal'], ['โกหก', 'lie'], ['กล่าวถึง', 'mention'], ['หนี้', 'owe'], ['หมุด,ปักหมุด', 'pin'], ['หมู', 'pig'], ['ปัจจุบัน', 'present'], ['รูปภาพ', 'picture'], ['พลาสติก', 'plastic'], ['เงียบ', 'quiet'], ['คำถาม', 'question'], ['ราชินี', 'queen'], ['วิ่ง', 'run'], ['อ่าน', 'read'], ['ราก', 'root'], ['พัก', 'rest'], ['ขวา,ถูกต้อง', 'right'], ['ขี่', 'ride'], ['ก้อนหิน', 'rock'], ['ดิบ', 'raw'], ['สะท้อน', 'reflex'], ['สับเปลี่ยน', 'shuffle'], ['ร้านขายของ', 'shop'], ['สั้น', 'short'], ['ดู,เห็น', 'see'], ['โรงเรียน', 'school'], ['หยุด', 'stop'], ['เปลือกหอย', 'shell'], ['พูดคุย', 'talk'], ['รถไฟ', 'train'], ['ปัญหา', 'trouble'], ['ท่องเที่ยว', 'travel'], ['สูง', 'tall'], ['คบเพลิง', 'torch'], ['เมือง', 'town'], ['น่าเกลียด', 'ugly'], ['ข้างใต้', 'under'], ['จักรวาล', 'universe'], ['หงุดหงิด,โมโห', 'upset'], ['พอใช้,ใช้ได้', 'useful'], ['ลุง', 'uncle'], ['รุนแรง', 'violent'], ['ภูเขาไฟ', 'volcano'], ['เหยื่ออาชญากรรม', 'victim'], ['วัคซีน', 'vaccine'], ['ไวรัส', 'virus'], ['โวลต์', 'volt'], ['รอคอย', 'wait'], ['เดิน', 'walk'], ['กำแพง', 'wall'], ['ต้องการ', 'want'], ['สงคราม', 'war'], ['อบอุ่น', 'warm'], ['ล้าง', 'wash'], ['ดู', 'watch'], ['น้ำ', 'water'], ['คลื่น', 'wave'], ['ขี้ผึ้ง', 'wax'], ['อ่อนแอ', 'weak'], ['อาวุธ', 'weapon'], ['ปี', 'year'], ['ตะคอก', 'yell'], ['สีเหลือง', 'yellow'], ['เมื่อวานนี้', 'yesterday'], ['เยาว์วัย', 'young'], ['โยโย่', 'yoyo'], ['ม้าลาย', 'zebra'], ['ซอมบี้', 'zombie'], ['สวนสัตว์', 'zoo'], ['ขยาย,ขยายภาพ', 'zoom']]
var rand_i = int(_randomize_question())
var timer = 0
var lose = false
var countdown = 15
var click = false
#var volume = 0

func _on_ok_pressed():
	text = get_node("write_down").get_text()
	if timer < 15:
		if text.to_lower() == word_list[rand_i][1] :
			global.score += 1
			countdown = 15
			timer = 0
			#volume = 0
			rand_i = int(_randomize_question())
			get_node("write_down").set_text("")
			get_node("Label").set_text("")
			$write_down.grab_focus()
			click = true
			#################################
		else:
			get_node("write_down").clear()
			$write_down.grab_focus()
			get_node("Label").set_text(wrong[rand_range(0, len(wrong))])
			
	else:
		lose = true
	pass # Replace with function body.


func _ready():
	global.score = 0
	$cat.set_frame(0)
	set_process(true)
	pass
	
	
func _process(delta):
	$write_down.grab_focus()
	$show.set_text(word_list[rand_i][0])
	$show_score.set_text(str("Score : ",global.score))	
	$show_timer.set_text(str("Time Left : ",countdown))
		
	if click == true  and text != "" :
		$cat.set_frame(0)
	if timer < 15:
		_on_cat_frame_changed()
	elif timer >= 15 and lose == true :
		global.word = word_list[rand_i][1]
		get_tree().change_scene("res://scene/end_game.tscn")
		pass
		
	else:
		lose = true
	click = false


func _randomize_question():
	var datetime = OS.get_datetime()
	var sec = datetime["second"]
	var msec = OS.get_ticks_msec()
	#print(msec)
	var rand_i = sec*msec
	while rand_i > len(word_list):
		rand_i = int(rand_i/10)
	print(rand_i)
	return rand_i

func _on_Timer_timeout():
	timer += 1
	countdown -= 1
	#volume += 1
	if timer == 15:
		pass
	else:
		get_node("tick_tock").play()
	pass # Replace with function body.

func _on_cat_frame_changed():
	$cat.set_frame(timer)
	pass # Replace with function body.

func _input(event):
	if event is InputEventKey and event.pressed:
		if event.scancode == KEY_ENTER:
			_on_ok_pressed()
	pass