.class public Lcom/appoxee/inbox/Message;
.super Ljava/lang/Object;
.source "Message.java"


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
    tableName = "message"
.end annotation


# static fields
.field public static final APP_ID_COLUME:Ljava/lang/String; = "app_id"

.field public static final BADGE_COLUME:Ljava/lang/String; = "bandge"

.field public static final DELETED_COLUME:Ljava/lang/String; = "deleted"

.field public static final DESCRIPTION_COLUME:Ljava/lang/String; = "description"

.field public static final EXPIRATION_DATE_COLUME:Ljava/lang/String; = "expiration"

.field public static final GROUP_ID_COLUME:Ljava/lang/String; = "group_id"

.field public static final ID_COLUME:Ljava/lang/String; = "_id"

.field public static final LINK_COLUME:Ljava/lang/String; = "link"

.field public static final MESSAGETYPE_COLUME:Ljava/lang/String; = "message_type"

.field public static final POST_DATE_COLUME:Ljava/lang/String; = "post_date"

.field public static final READ_COLUME:Ljava/lang/String; = "read"

.field public static final SOUND_COLUME:Ljava/lang/String; = "sound"

.field public static final TITLE_COLUME:Ljava/lang/String; = "title"

.field public static final UPDATE_DATE_COLUME:Ljava/lang/String; = "update_date"


# instance fields
.field private appId:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "app_id"
    .end annotation
.end field

.field private bandge:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "bandge"
    .end annotation
.end field

.field private deleted:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "deleted"
    .end annotation
.end field

.field private description:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "description"
    .end annotation
.end field

.field private expirationDate:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "expiration"
    .end annotation
.end field

.field private groupId:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "group_id"
    .end annotation
.end field

.field private id:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "_id"
        id = true
    .end annotation
.end field

.field private link:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "link"
    .end annotation
.end field

.field private messageType:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "message_type"
    .end annotation
.end field

.field private postDate:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "post_date"
    .end annotation
.end field

.field private read:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "read"
    .end annotation
.end field

.field private sound:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "sound"
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "title"
    .end annotation
.end field

.field private updateDate:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "update_date"
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    return-void
.end method

.method public static FromJson(Lorg/json/JSONObject;)Lcom/appoxee/inbox/Message;
    .locals 20
    .param p0, "jsonMessage"    # Lorg/json/JSONObject;

    .prologue
    .line 83
    const/4 v9, 0x0

    .line 84
    .local v9, "message":Lcom/appoxee/inbox/Message;
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-direct {v6, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 88
    .local v6, "formatter":Ljava/text/DateFormat;
    :try_start_0
    const-string v3, "MessageID"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 89
    .local v12, "messageId":J
    const-string v3, "MessageGroupID"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 90
    .local v7, "groupId":J
    const-string v3, "AppID"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 91
    .local v3, "appId":J
    const-string v5, "type"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 92
    .local v16, "messageType":Ljava/lang/String;
    const-string v5, "MessageLink"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 93
    .local v14, "messageLink":Ljava/lang/String;
    const-string v5, "MessageHeader"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 94
    .local v11, "messageHeader":Ljava/lang/String;
    const-string v5, "MessageDescription"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 95
    .local v10, "messageDescription":Ljava/lang/String;
    const-string v5, "MessagePostDate"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v15

    .line 96
    .local v15, "messagePostDate":Ljava/util/Date;
    const-string v5, "MessageUpdateDate"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v17

    .line 97
    .local v17, "messageUpdateDate":Ljava/util/Date;
    const/4 v5, 0x0

    .line 99
    .local v5, "expirationDate":Ljava/util/Date;
    const-string v5, "Expiration"

    .end local v5    # "expirationDate":Ljava/util/Date;
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 100
    const-string v5, "Expiration"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    .restart local v5    # "expirationDate":Ljava/util/Date;
    move-object v6, v5

    .line 105
    .end local v5    # "expirationDate":Ljava/util/Date;
    .local v6, "expirationDate":Ljava/util/Date;
    :goto_0
    const/4 v5, 0x0

    .line 107
    .local v5, "deleted":Z
    const-string v18, "Deleted"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 108
    const-string v5, "Deleted"

    .end local v5    # "deleted":Z
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    .line 112
    .local p0, "deleted":Z
    :goto_1
    new-instance v5, Lcom/appoxee/inbox/Message;

    invoke-direct {v5}, Lcom/appoxee/inbox/Message;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    .line 114
    .end local v9    # "message":Lcom/appoxee/inbox/Message;
    .local v5, "message":Lcom/appoxee/inbox/Message;
    :try_start_1
    invoke-virtual {v5, v12, v13}, Lcom/appoxee/inbox/Message;->setId(J)V

    .line 115
    invoke-virtual {v5, v7, v8}, Lcom/appoxee/inbox/Message;->setGroupId(J)V

    .line 116
    invoke-virtual {v5, v3, v4}, Lcom/appoxee/inbox/Message;->setAppId(J)V

    .line 117
    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/appoxee/inbox/Message;->setMessageType(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v5, v14}, Lcom/appoxee/inbox/Message;->setLink(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v5, v11}, Lcom/appoxee/inbox/Message;->setTitle(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v5, v10}, Lcom/appoxee/inbox/Message;->setDescription(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v5, v15}, Lcom/appoxee/inbox/Message;->setPostDate(Ljava/util/Date;)V

    .line 122
    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/appoxee/inbox/Message;->setUpdateDate(Ljava/util/Date;)V

    .line 123
    move-object v0, v5

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/appoxee/inbox/Message;->setDeleted(Z)V

    .line 125
    if-eqz v6, :cond_1

    .line 126
    invoke-virtual {v5, v6}, Lcom/appoxee/inbox/Message;->setExpirationDate(Ljava/util/Date;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 p0, v5

    .line 137
    .end local v3    # "appId":J
    .end local v5    # "message":Lcom/appoxee/inbox/Message;
    .end local v6    # "expirationDate":Ljava/util/Date;
    .end local v7    # "groupId":J
    .end local v10    # "messageDescription":Ljava/lang/String;
    .end local v11    # "messageHeader":Ljava/lang/String;
    .end local v12    # "messageId":J
    .end local v14    # "messageLink":Ljava/lang/String;
    .end local v15    # "messagePostDate":Ljava/util/Date;
    .end local v16    # "messageType":Ljava/lang/String;
    .end local v17    # "messageUpdateDate":Ljava/util/Date;
    .local p0, "message":Lcom/appoxee/inbox/Message;
    :goto_2
    return-object p0

    .line 102
    .restart local v3    # "appId":J
    .local v6, "formatter":Ljava/text/DateFormat;
    .restart local v7    # "groupId":J
    .restart local v9    # "message":Lcom/appoxee/inbox/Message;
    .restart local v10    # "messageDescription":Ljava/lang/String;
    .restart local v11    # "messageHeader":Ljava/lang/String;
    .restart local v12    # "messageId":J
    .restart local v14    # "messageLink":Ljava/lang/String;
    .restart local v15    # "messagePostDate":Ljava/util/Date;
    .restart local v16    # "messageType":Ljava/lang/String;
    .restart local v17    # "messageUpdateDate":Ljava/util/Date;
    .local p0, "jsonMessage":Lorg/json/JSONObject;
    :cond_0
    :try_start_2
    new-instance v5, Ljava/util/Date;

    const-wide/16 v18, 0x0

    move-object v0, v5

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_1

    .local v5, "expirationDate":Ljava/util/Date;
    move-object v6, v5

    .end local v5    # "expirationDate":Ljava/util/Date;
    .local v6, "expirationDate":Ljava/util/Date;
    goto :goto_0

    .line 129
    .end local v3    # "appId":J
    .end local v6    # "expirationDate":Ljava/util/Date;
    .end local v7    # "groupId":J
    .end local v10    # "messageDescription":Ljava/lang/String;
    .end local v11    # "messageHeader":Ljava/lang/String;
    .end local v12    # "messageId":J
    .end local v14    # "messageLink":Ljava/lang/String;
    .end local v15    # "messagePostDate":Ljava/util/Date;
    .end local v16    # "messageType":Ljava/lang/String;
    .end local v17    # "messageUpdateDate":Ljava/util/Date;
    .end local p0    # "jsonMessage":Lorg/json/JSONObject;
    :catch_0
    move-exception p0

    move-object v3, v9

    .line 130
    .end local v9    # "message":Lcom/appoxee/inbox/Message;
    .local v3, "message":Lcom/appoxee/inbox/Message;
    .local p0, "e":Lorg/json/JSONException;
    :goto_3
    const-string v4, "Message FromJson error: JSONException"

    invoke-static {v4}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 131
    invoke-static/range {p0 .. p0}, Lcom/appoxee/utils/Utils;->DebugException(Ljava/lang/Exception;)V

    move-object/from16 p0, v3

    .end local v3    # "message":Lcom/appoxee/inbox/Message;
    .local p0, "message":Lcom/appoxee/inbox/Message;
    goto :goto_2

    .line 132
    .end local p0    # "message":Lcom/appoxee/inbox/Message;
    .restart local v9    # "message":Lcom/appoxee/inbox/Message;
    :catch_1
    move-exception p0

    move-object v3, v9

    .line 133
    .end local v9    # "message":Lcom/appoxee/inbox/Message;
    .restart local v3    # "message":Lcom/appoxee/inbox/Message;
    .local p0, "e":Ljava/text/ParseException;
    :goto_4
    const-string v4, "Message FromJson error: error parsing Date values"

    invoke-static {v4}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 134
    invoke-static/range {p0 .. p0}, Lcom/appoxee/utils/Utils;->DebugException(Ljava/lang/Exception;)V

    move-object/from16 p0, v3

    .end local v3    # "message":Lcom/appoxee/inbox/Message;
    .local p0, "message":Lcom/appoxee/inbox/Message;
    goto :goto_2

    .line 132
    .local v3, "appId":J
    .local v5, "message":Lcom/appoxee/inbox/Message;
    .restart local v6    # "expirationDate":Ljava/util/Date;
    .restart local v7    # "groupId":J
    .restart local v10    # "messageDescription":Ljava/lang/String;
    .restart local v11    # "messageHeader":Ljava/lang/String;
    .restart local v12    # "messageId":J
    .restart local v14    # "messageLink":Ljava/lang/String;
    .restart local v15    # "messagePostDate":Ljava/util/Date;
    .restart local v16    # "messageType":Ljava/lang/String;
    .restart local v17    # "messageUpdateDate":Ljava/util/Date;
    .local p0, "deleted":Z
    :catch_2
    move-exception p0

    move-object v3, v5

    .end local v5    # "message":Lcom/appoxee/inbox/Message;
    .local v3, "message":Lcom/appoxee/inbox/Message;
    goto :goto_4

    .line 129
    .local v3, "appId":J
    .restart local v5    # "message":Lcom/appoxee/inbox/Message;
    :catch_3
    move-exception p0

    move-object v3, v5

    .end local v5    # "message":Lcom/appoxee/inbox/Message;
    .local v3, "message":Lcom/appoxee/inbox/Message;
    goto :goto_3

    .local v3, "appId":J
    .restart local v5    # "message":Lcom/appoxee/inbox/Message;
    :cond_1
    move-object/from16 p0, v5

    .end local v5    # "message":Lcom/appoxee/inbox/Message;
    .local p0, "message":Lcom/appoxee/inbox/Message;
    goto :goto_2

    .local v5, "deleted":Z
    .restart local v9    # "message":Lcom/appoxee/inbox/Message;
    .local p0, "jsonMessage":Lorg/json/JSONObject;
    :cond_2
    move/from16 p0, v5

    .end local v5    # "deleted":Z
    .local p0, "deleted":Z
    goto :goto_1
.end method


# virtual methods
.method public getAppId()J
    .locals 2

    .prologue
    .line 157
    iget-wide v0, p0, Lcom/appoxee/inbox/Message;->appId:J

    return-wide v0
.end method

.method public getBandge()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lcom/appoxee/inbox/Message;->bandge:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/appoxee/inbox/Message;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getExpirationDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/appoxee/inbox/Message;->expirationDate:Ljava/util/Date;

    return-object v0
.end method

.method public getGroupId()J
    .locals 2

    .prologue
    .line 149
    iget-wide v0, p0, Lcom/appoxee/inbox/Message;->groupId:J

    return-wide v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 141
    iget-wide v0, p0, Lcom/appoxee/inbox/Message;->id:J

    return-wide v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/appoxee/inbox/Message;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/appoxee/inbox/Message;->messageType:Ljava/lang/String;

    return-object v0
.end method

.method public getPostDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/appoxee/inbox/Message;->postDate:Ljava/util/Date;

    return-object v0
.end method

.method public getSound()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/appoxee/inbox/Message;->sound:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/appoxee/inbox/Message;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/appoxee/inbox/Message;->updateDate:Ljava/util/Date;

    return-object v0
.end method

.method public isDeleted()Z
    .locals 1

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/appoxee/inbox/Message;->deleted:Z

    return v0
.end method

.method public isRead()Z
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/appoxee/inbox/Message;->read:Z

    return v0
.end method

.method public setAppId(J)V
    .locals 0
    .param p1, "appId"    # J

    .prologue
    .line 161
    iput-wide p1, p0, Lcom/appoxee/inbox/Message;->appId:J

    .line 162
    return-void
.end method

.method public setBandge(I)V
    .locals 0
    .param p1, "bandge"    # I

    .prologue
    .line 193
    iput p1, p0, Lcom/appoxee/inbox/Message;->bandge:I

    .line 194
    return-void
.end method

.method public setDeleted(Z)V
    .locals 0
    .param p1, "deleted"    # Z

    .prologue
    .line 177
    iput-boolean p1, p0, Lcom/appoxee/inbox/Message;->deleted:Z

    .line 178
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/appoxee/inbox/Message;->description:Ljava/lang/String;

    .line 242
    return-void
.end method

.method public setExpirationDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "expirationDate"    # Ljava/util/Date;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/appoxee/inbox/Message;->expirationDate:Ljava/util/Date;

    .line 226
    return-void
.end method

.method public setGroupId(J)V
    .locals 0
    .param p1, "groupId"    # J

    .prologue
    .line 153
    iput-wide p1, p0, Lcom/appoxee/inbox/Message;->groupId:J

    .line 154
    return-void
.end method

.method public setId(J)V
    .locals 0
    .param p1, "id"    # J

    .prologue
    .line 145
    iput-wide p1, p0, Lcom/appoxee/inbox/Message;->id:J

    .line 146
    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0
    .param p1, "link"    # Ljava/lang/String;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/appoxee/inbox/Message;->link:Ljava/lang/String;

    .line 202
    return-void
.end method

.method public setMessageType(Ljava/lang/String;)V
    .locals 0
    .param p1, "messageType"    # Ljava/lang/String;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/appoxee/inbox/Message;->messageType:Ljava/lang/String;

    .line 250
    return-void
.end method

.method public setPostDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "postDate"    # Ljava/util/Date;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/appoxee/inbox/Message;->postDate:Ljava/util/Date;

    .line 210
    return-void
.end method

.method public setRead(Z)V
    .locals 0
    .param p1, "read"    # Z

    .prologue
    .line 169
    iput-boolean p1, p0, Lcom/appoxee/inbox/Message;->read:Z

    .line 170
    return-void
.end method

.method public setSound(Ljava/lang/String;)V
    .locals 0
    .param p1, "sound"    # Ljava/lang/String;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/appoxee/inbox/Message;->sound:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/appoxee/inbox/Message;->title:Ljava/lang/String;

    .line 234
    return-void
.end method

.method public setUpdateDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "updateDate"    # Ljava/util/Date;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/appoxee/inbox/Message;->updateDate:Ljava/util/Date;

    .line 218
    return-void
.end method
