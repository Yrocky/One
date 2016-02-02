## API

说明1，用户的token是试试刷新的，所以要隔一段时间进行获取一下，具体怎么获取，我还不知道
tkoen用的是**jwt**字段表示的，但凡遇到要进行当前用户的信息的时候就不能进行

说明2，语音文章的flag是根据具体具体文章接口获取的，如果有就有flag，如果没有就没有flag

### 首页
	
* **短语**：http://v3.wufazhuce.com:8000/api/hp/more/0

### 阅读

* #### Banner

	* **滚动banner**：http://v3.wufazhuce.com:8000/api/reading/carousel

	* **每一个banner中的文章**：http://v3.wufazhuce.com:8000/api/reading/carousel/25

* #### 文章
	
	* **所有文章列表**：http://v3.wufazhuce.com:8000/api/reading/index
	
	* **具体文章**：http://v3.wufazhuce.com:8000/api/essay/1161
	
	* **评论**：http://v3.wufazhuce.com:8000/api/comment/praise/essay/1161/0
	
	* **相关文章**：http://v3.wufazhuce.com:8000/api/related/essay/1303
	
	* **语音文章**：http://music.wufazhuce.com/lqSZuLscvDDJ1VmH_IR4mvBkpkn6
	
	* **语音文件**：http://112.65.220.26/music.wufazhuce.com/lqSZuLscvDDJ1VmH_IR4mvBkpkn6?wsiphost=local
	
* #### 连载

* #### 问题
	
	* **问题详细**：http://v3.wufazhuce.com:8000/api/question/1246
	
	* **问题评论**：http://v3.wufazhuce.com:8000/api/comment/praise/question/1246/0
	
	* **相关问题**：http://v3.wufazhuce.com:8000/api/related/question/1246

### 音乐


* **我的歌单**：http://v3.wufazhuce.com:8000/api/collection/newer/4/0?jwt=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE0NTQyMzk5MzEsInVzZXJpZCI6IjIzNjA5OTAifQ.RFpG44cO-U6Z_NRPcQHiquLb3AnXygiL2sUIrUN5XRc

* **歌曲故事**：http://v3.wufazhuce.com:8000/api/music/detail/31

* **相似歌曲**：http://v3.wufazhuce.com:8000/api/related/music/31

* **音乐评论**：http://v3.wufazhuce.com:8000/api/comment/praise/music/31/0


### 个人

* #### 个人信息

	* **个人信息**：http://v3.wufazhuce.com:8000/api/collection/newer/4/0?jwt=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE0NTQyMzk5MzEsInVzZXJpZCI6IjIzNjA5OTAifQ.RFpG44cO-U6Z_NRPcQHiquLb3AnXygiL2sUIrUN5XRc


* #### 图文收藏

	* **图片收藏**：http://v3.wufazhuce.com:8000/api/collection/newer/4/0?jwt=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE0NTQyMzk5MzEsInVzZXJpZCI6IjIzNjA5OTAifQ.RFpG44cO-U6Z_NRPcQHiquLb3AnXygiL2sUIrUN5XRc

* #### 文章收藏
	* **短篇**：http://v3.wufazhuce.com:8000/api/collection/newer/1/0?jwt=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE0NTQyMzk5MzEsInVzZXJpZCI6IjIzNjA5OTAifQ.RFpG44cO-U6Z_NRPcQHiquLb3AnXygiL2sUIrUN5XRc

	* **连载**：http://v3.wufazhuce.com:8000/api/collection/newer/6/0?jwt=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE0NTQyMzk5MzEsInVzZXJpZCI6IjIzNjA5OTAifQ.RFpG44cO-U6Z_NRPcQHiquLb3AnXygiL2sUIrUN5XRc

	* **问题**：http://v3.wufazhuce.com:8000/api/collection/newer/2/0?jwt=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE0NTQyMzk5MzEsInVzZXJpZCI6IjIzNjA5OTAifQ.RFpG44cO-U6Z_NRPcQHiquLb3AnXygiL2sUIrUN5XRc


* #### 消息

	* **消息**：http://v3.wufazhuce.com:8000/api/message?jwt=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE0NTQyMzk5MzEsInVzZXJpZCI6IjIzNjA5OTAifQ.RFpG44cO-U6Z_NRPcQHiquLb3AnXygiL2sUIrUN5XRc


* #### 小记
	* **小记**：http://v3.wufazhuce.com:8000/api/diary/list/more/0?jwt=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE0NTQyMzk5MzEsInVzZXJpZCI6IjIzNjA5OTAifQ.RFpG44cO-U6Z_NRPcQHiquLb3AnXygiL2sUIrUN5XRc


### 其他

* **获得用户信息**：http://v3.wufazhuce.com:8000/api/user/info/2360990?jwt=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE0NTQyMzk5MzEsInVzZXJpZCI6IjIzNjA5OTAifQ.RFpG44cO-U6Z_NRPcQHiquLb3AnXygiL2sUIrUN5XRc

* **版权页面**：http://v3.wufazhuce.com:8000/api/adlist/ios


### 其他用户

* **用户信息**：http://v3.wufazhuce.com:8000/api/user/info/5524365

* **用户其他信息**：http://v3.wufazhuce.com:8000/api/othercenter/5524365

* **歌单**：http://v3.wufazhuce.com:8000/api/works/music/5524365

* **文章**：http://v3.wufazhuce.com:8000/api/works/essay/5524365

* **连载**：http://v3.wufazhuce.com:8000/api/works/serial/5524365


## POST

* **收藏图文**：http://v3.wufazhuce.com:8000/api/collection/add
	
	字段|参数
	:-----|:-----
	type|0
	id|1241
	jwt|eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE0NTQyMzk5MzEsInVzZXJpZCI6IjIzNjA5OTAifQ.RFpG44cO-U6Z_NRPcQHiquLb3AnXygiL2sUIrUN5XRc

* **点赞**：http://v3.wufazhuce.com:8000/api/praise/add