extends Node2D

var text = ""
var wrong = ["Are you sure?","Wrong, try again.","Meow.","Nope.","Nah","I'm hungry.","Are you serious?","What?","Wrong.","Wrong, hurry up!"]
var word_list =  [['พิกัด', ['coordinate']], ['สนทนา', ['talk', 'discuss', 'converse']], ['สมมติ', ['assume', 'suppose']], ['ผู้ใหญ่', ['adult']], ['น่าเบื่อ', ['boring']], ['รู้สึกเบื่อ', ['bored']], ['มะเร็ง', ['cancer']], ['ไต', ['kidney']], ['ตับ', ['liver']], ['อิจฉา', ['envy', 'jealous']], ['เนย', ['butter']], ['ผีเสื้อ', ['butterfly']], ['สีน้ำตาล', ['brown']], ['สร้าง', ['create', 'build', 'make', 'built']], ['อาชญากรรม', ['crime']], ['ร่องรอย,เบาะแส', ['clue']], ['คำใบ้', ['hint']], ['เวียนหัว', ['dizzy', 'dizziness']], ['สูญพันธุ์', ['extinct']], ['ขนนก', ['feather']], ['ชนะ,พิชิต', ['win', 'beat', 'conquer']], ['ธง', ['flag']], ['แบนราบ', ['flat']], ['ปืน', ['gun']], ['สีเทา', ['grey', 'gray']], ['ขี้เถ้า', ['ashes', 'ash']], ['ศพ', ['body', 'corpse']], ['ใหญ่', ['big', 'large', 'great', 'huge', 'major', 'enormous', 'immense']], ['ความหวัง', ['hope']], ['แมลง', ['insect', 'bug', 'fly']], ['เตารีด', ['iron']], ['ซื่อสัตย์', ['honest', 'loyal']], ['อย่างจริงใจ', ['sincere']], ['คำถาม', ['question']], ['ก้อนหิน', ['rock']], ['ดิบ', ['raw']], ['โรงเรียน', ['school']], ['น่าขยะแขยง', ['disgusting']], ['ภูเขาไฟ', ['volcano']], ['กรงขัง', ['cell']], ['วัคซีน', ['vaccine']], ['กำแพง', ['wall']], ['สงคราม', ['war']], ['เหยื่ออาชญากรรม', ['victim']], ['ไวรัส', ['virus']], ['อบอุ่น', ['warm']], ['ปี', ['year']], ['อ่อนแอ', ['weak']], ['ลูกหมา', ['puppy']], ['ลูกแมว', ['kitten', 'kitty', 'pussy']], ['ผมทรงหางม้า', ['ponytail']], ['สวนสัตว์', ['zoo']], ['ขี้ผึ้ง', ['wax', 'beeswax']], ['ม้าลาย', ['zebra']], ['โยโย่', ['yoyo']], ['ชั่วคราว', ['temporary']], ['การเลือกตั้ง', ['election']], ['จ้างงาน', ['employ', 'hire']], ['ไล่ออกจากงาน', ['fired']], ['การชดเชย', ['compensation']], ['หย่าร้าง', ['divorce']], ['บรรยาย,อธิบาย', ['describe', 'explain']], ['บริจาค', ['donate']], ['ผู้เชี่ยวชาญ', ['expert', 'specialist', 'professional']], ['คู่ขนาน', ['parallel']], ['ซองจดหมาย', ['envelope']], ['ความถูกต้องแม่นยำ', ['accuracy']], ['หนี้สิน', ['debt']], ['เงินกู้', ['loan']], ['ลำดับความสำคัญ', ['priority']], ['คำขอโทษ', ['apology']], ['ปรบมือ', ['clap', 'applaud']], ['ผู้ชม', ['audience', 'spectator', 'viewer', 'crowd']], ['เครื่องดื่ม', ['beverage', 'drink', 'drinks']], ['มือสมัครเล่น', ['newbie', 'amateur', 'beginner']], ['จุดหมายปลายทาง', ['destination']], ['คลื่น', ['wave']], ['รากของต้นไม้', ['root']], ['ทางขวา', ['right']], ['ทางซ้าย', ['left']], ['แมงกระพรุน', ['jellyfish']], ['ลักพาตัว', ['kidnap', 'kidnapped', 'kidnapping']], ['กรรม', ['karma']], ['น้ำแข็ง', ['ice']], ['สามี', ['husband']], ['คนใช้,แม่บ้าน', ['maid', 'maidservant', 'servant', 'housemaid']], ['พรสวรรค์', ['gift']], ['แก๊ส', ['gas']], ['เรือ', ['ship', 'boat', 'vessel', 'ark']], ['เป็นลม', ['faint']], ['ไข้', ['fever', 'flu']], ['มะเขือม่วง', ['eggplant']], ['มังคุด', ['mangosteen']], ['ลูกแพร', ['pear']], ['ลูกพลัม', ['plum']], ['ขนตา', ['eyelash']], ['ขนคิ้ว', ['brows', 'brow', 'eyebrows', 'eyebrow']], ['หนวด', ['mustache', 'moustache', 'mustachio']], ['ปอด', ['lung']], ['ตับอ่อน', ['pancreas']], ['ช่างไม้', ['carpenter']], ['นักสืบ', ['detective']], ['สัปเหร่อ', ['undertaker']], ['นักดับเพลิง', ['firefighter', 'fireman']], ['แกะตัวผู้', ['ram']], ['แกะตัวเมีย', ['ewe']], ['กุ้งแม่น้ำ', ['prawn', 'shrimp']], ['หอยนางรม', ['oyster']], ['ปลาดุก', ['catfish']], ['หอยแมลงภู่', ['mussel']], ['ควันบุหรี่', ['smoke']], ['ภูมิแพ้', ['allergy', 'allergic']], ['ผื่นคัน', ['rash']], ['อาการคัน', ['itch']], ['อาเจียน', ['vomit', 'puke']], ['กลืนลงไป', ['swallow']], ['กำไลข้อเท้า', ['anklet']], ['กำไลข้อมือ', ['bracelet']], ['เข็มขัด', ['belt']], ['ต่างหู', ['earring', 'earrings']], ['อาณาจักร,จักรวรรดิ', ['kingdom', 'empire']], ['สร้อยคอ', ['necklace']], ['ชุดนอน', ['pajamas', 'sleepwear', 'pyjamas']], ['ถุงน่อง', ['stockings']], ['ตำนาน', ['legend', 'myth', 'mythology', 'lore']], ['เผ่าพันธุ์', ['race']], ['ผ้าเช็ดหน้า', ['napkin']], ['ผ้ากันเปื้อน', ['apron']], ['เตาอบ', ['oven']], ['ห้องใต้ดิน', ['basement']], ['เตาผิง', ['fireplace']], ['แตงกวา', ['cucumber']], ['ผ้าห่ม', ['blanket']], ['ผ้าม่าน', ['curtain']], ['ตู้เสื้อผ้า', ['wardrobe']], ['ประเทศอียิปต์', ['egypt']], ['ประเทศกัมพูชา', ['cambodia']], ['เข็มเย็บผ้า', ['needle']], ['เข็มทิศ', ['compass']], ['เมืองหลวง', ['capital']], ['นกฟีนิกซ์', ['phoenix']], ['ฉลาด', ['clever', 'intelligent', 'wise', 'smart', 'brilliant']], ['หมูป่า', ['boar']], ['อูฐ', ['camel']], ['ไก่ตัวผู้', ['cock', 'rooster']], ['ไก่ตัวเมีย', ['hen', 'broody']], ['กวาง', ['deer']], ['หงส์', ['swan']], ['ห่าน', ['goose']], ['จิงโจ้', ['kangaroo']], ['เต่าทะเล', ['turtle']], ['เต่าบก', ['tortoise']], ['ปลาหมึกยักษ์', ['octopus']], ['มีสเน่ห์', ['charm', 'charming']], ['สาบาน', ['swear', 'vow']], ['ปลากระเบน', ['ray', 'stingray']], ['เรือดำน้ำ', ['submarine']], ['ล้มละลาย', ['bankrupt', 'insolvent']], ['ค้างคาว', ['bat']], ['การระเบิด', ['explosion', 'blast', 'blasting', 'blow']], ['ผ้าพันแผล', ['bandage', 'gauze']], ['เจ้าบ่าว', ['groom']], ['เจ้าสาว', ['bride']], ['หัวกะโหลก', ['skull']], ['ปฏิทิน', ['calendar']], ['คนบาป', ['sinner']], ['ละครสัตว์', ['circus']], ['ดินเหนียว', ['clay']], ['คนเก็บตัว', ['introvert']], ['ทองแดง', ['copper']], ['วงจร', ['cycle']], ['ปลาโลมา', ['dolphin']], ['ราชวงศ์', ['dynasty']], ['วิทยาลัย', ['college', 'academy']], ['มหาวิทยาลัย', ['university']], ['หอพัก', ['dormitory', 'dorm']], ['สำเร็จการศึกษา', ['graduation', 'graduate']], ['ปะการัง', ['coral']]]
var rand_i = int(_randomize_question())
var timer = 0
var lose = false
var countdown = 15
var click = false
#var volume = 0

func _on_ok_pressed():
	text = get_node("write_down").get_text()
	if timer < 15:
		if text.to_lower() in word_list[rand_i][1]:
			global.score += 1
			countdown = 15
			timer = 0
			rand_i = int(_randomize_question())
			get_node("write_down").set_text("")
			get_node("Label").set_text("")
			$write_down.grab_focus()
			click = true
		else:
			get_node("write_down").clear()
			$write_down.grab_focus()
			get_node("Label").set_text(wrong[rand_range(0, len(wrong)-1)])
			
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
		var w = rand_range(0,len(word_list[rand_i][1]))
		var ww = word_list[rand_i][1]
		global.word = ww[w]
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
	var rand_i = sec*(msec*msec)
	while rand_i >= len(word_list):
		rand_i = int(rand_i/10)
	#print(rand_i)
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