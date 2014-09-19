.class public Lcom/fusepowered/util/ResponseValues;
.super Ljava/lang/Object;
.source "ResponseValues.java"


# instance fields
.field private account:Lcom/fusepowered/util/Account;

.field private adQueueParsed:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/fusepowered/util/Ad;",
            ">;"
        }
    .end annotation
.end field

.field private ads:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/AdProvider;",
            ">;"
        }
    .end annotation
.end field

.field private applifierId:Ljava/lang/String;

.field private applifierUseImpact:Z

.field private chatMessages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/ChatMessage;",
            ">;>;"
        }
    .end annotation
.end field

.field private disableAll:Z

.field private disableAnalytics:Z

.field private disableConfiguration:Z

.field private disableNotifications:Z

.field private dlc:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/DLC;",
            ">;"
        }
    .end annotation
.end field

.field private enemiesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/Player;",
            ">;"
        }
    .end annotation
.end field

.field private error:Ljava/lang/String;

.field private friendsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/Player;",
            ">;"
        }
    .end annotation
.end field

.field private fuseId:Ljava/lang/String;

.field private gameConfigs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/GameConfig;",
            ">;"
        }
    .end annotation
.end field

.field private gameKeyValuePairs:Lcom/fusepowered/util/GameKeyValuePairs;

.field private incentives:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/Incentive;",
            ">;"
        }
    .end annotation
.end field

.field private mailLists:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/Mail;",
            ">;>;"
        }
    .end annotation
.end field

.field private messages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/Message;",
            ">;"
        }
    .end annotation
.end field

.field private requestId:Ljava/lang/String;

.field private sessionId:Ljava/lang/String;

.field private signPosts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/SignPost;",
            ">;"
        }
    .end annotation
.end field

.field private timestamp:Ljava/lang/String;

.field private userCity:Ljava/lang/String;

.field private userCountry:Ljava/lang/String;

.field private userTransactionLogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/UserTransactionLog;",
            ">;"
        }
    .end annotation
.end field

.field private vungleId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/fusepowered/util/ResponseValues;->applifierId:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/fusepowered/util/ResponseValues;->vungleId:Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/util/ResponseValues;->chatMessages:Ljava/util/HashMap;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/util/ResponseValues;->mailLists:Ljava/util/HashMap;

    .line 46
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/util/ResponseValues;->adQueueParsed:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method


# virtual methods
.method public getAccount()Lcom/fusepowered/util/Account;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/fusepowered/util/ResponseValues;->account:Lcom/fusepowered/util/Account;

    return-object v0
.end method

.method public getAd()Lcom/fusepowered/util/Ad;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/fusepowered/util/ResponseValues;->adQueueParsed:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/fusepowered/util/Ad;

    return-object p0
.end method

.method public getAds()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/AdProvider;",
            ">;"
        }
    .end annotation

    .prologue
    .line 192
    iget-object v0, p0, Lcom/fusepowered/util/ResponseValues;->ads:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getApplifierId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/fusepowered/util/ResponseValues;->applifierId:Ljava/lang/String;

    return-object v0
.end method

.method public getApplifierUseImpact()Z
    .locals 1

    .prologue
    .line 369
    iget-boolean v0, p0, Lcom/fusepowered/util/ResponseValues;->applifierUseImpact:Z

    return v0
.end method

.method public getChatMessages(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "fuseId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/ChatMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 258
    if-nez p1, :cond_0

    .line 259
    const/4 v0, 0x0

    .line 261
    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/util/ResponseValues;->chatMessages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/ArrayList;

    move-object v0, p0

    goto :goto_0
.end method

.method public getDlc()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/DLC;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Lcom/fusepowered/util/ResponseValues;->dlc:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getEnemiesList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/Player;",
            ">;"
        }
    .end annotation

    .prologue
    .line 305
    iget-object v0, p0, Lcom/fusepowered/util/ResponseValues;->enemiesList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getError()Ljava/lang/String;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/fusepowered/util/ResponseValues;->error:Ljava/lang/String;

    return-object v0
.end method

.method public getFriendsList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/Player;",
            ">;"
        }
    .end annotation

    .prologue
    .line 297
    iget-object v0, p0, Lcom/fusepowered/util/ResponseValues;->friendsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFuseId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/fusepowered/util/ResponseValues;->fuseId:Ljava/lang/String;

    return-object v0
.end method

.method public getGameConfigs()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/GameConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 153
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .local v4, rtn:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/fusepowered/util/GameConfig;>;"
    sget-object v6, Lcom/fusepowered/fuseapi/FuseAPI;->appdata:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v3

    .line 156
    .local v3, m:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 158
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 159
    .local v2, k:Ljava/lang/String;
    sget-object v6, Lcom/fusepowered/fuseapi/FuseAPI;->appdata:Landroid/content/SharedPreferences;

    const/4 v7, 0x0

    invoke-interface {v6, v2, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 161
    .local v5, v:Ljava/lang/String;
    const-string v6, "GAME CONFIG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sending this configuration key:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " value:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    new-instance v0, Lcom/fusepowered/util/GameConfig;

    invoke-direct {v0}, Lcom/fusepowered/util/GameConfig;-><init>()V

    .line 165
    .local v0, gc:Lcom/fusepowered/util/GameConfig;
    invoke-virtual {v0, v2}, Lcom/fusepowered/util/GameConfig;->setKey(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v0, v5}, Lcom/fusepowered/util/GameConfig;->setValue(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 171
    .end local v0           #gc:Lcom/fusepowered/util/GameConfig;
    .end local v2           #k:Ljava/lang/String;
    .end local v5           #v:Ljava/lang/String;
    :cond_0
    return-object v4
.end method

.method public getGameKeyValuePairs()Lcom/fusepowered/util/GameKeyValuePairs;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/fusepowered/util/ResponseValues;->gameKeyValuePairs:Lcom/fusepowered/util/GameKeyValuePairs;

    return-object v0
.end method

.method public getIncentives()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/Incentive;",
            ">;"
        }
    .end annotation

    .prologue
    .line 250
    iget-object v0, p0, Lcom/fusepowered/util/ResponseValues;->incentives:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMailList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "fuseId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/Mail;",
            ">;"
        }
    .end annotation

    .prologue
    .line 277
    if-nez p1, :cond_0

    .line 278
    const/4 v0, 0x0

    .line 280
    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/util/ResponseValues;->mailLists:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/ArrayList;

    move-object v0, p0

    goto :goto_0
.end method

.method public getMessages()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/fusepowered/util/ResponseValues;->messages:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getNextMessage()Lcom/fusepowered/util/Message;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 118
    iget-object v1, p0, Lcom/fusepowered/util/ResponseValues;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    const/4 v1, 0x0

    .line 124
    :goto_0
    return-object v1

    .line 121
    :cond_0
    iget-object v1, p0, Lcom/fusepowered/util/ResponseValues;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/util/Message;

    .line 122
    .local v0, rtn:Lcom/fusepowered/util/Message;
    iget-object v1, p0, Lcom/fusepowered/util/ResponseValues;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object v1, v0

    .line 124
    goto :goto_0
.end method

.method public getQueueSize()I
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/fusepowered/util/ResponseValues;->adQueueParsed:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    return v0
.end method

.method public getReqId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/fusepowered/util/ResponseValues;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/fusepowered/util/ResponseValues;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getSignPosts()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/SignPost;",
            ">;"
        }
    .end annotation

    .prologue
    .line 269
    iget-object v0, p0, Lcom/fusepowered/util/ResponseValues;->signPosts:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTimestamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/fusepowered/util/ResponseValues;->timestamp:Ljava/lang/String;

    return-object v0
.end method

.method public getUserCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/fusepowered/util/ResponseValues;->userCity:Ljava/lang/String;

    return-object v0
.end method

.method public getUserCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/fusepowered/util/ResponseValues;->userCountry:Ljava/lang/String;

    return-object v0
.end method

.method public getUserTransactionLogs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/UserTransactionLog;",
            ">;"
        }
    .end annotation

    .prologue
    .line 288
    iget-object v0, p0, Lcom/fusepowered/util/ResponseValues;->userTransactionLogs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getVungleId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/fusepowered/util/ResponseValues;->vungleId:Ljava/lang/String;

    return-object v0
.end method

.method public isDisableAll()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/fusepowered/util/ResponseValues;->disableAll:Z

    return v0
.end method

.method public isDisableAnalytics()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/fusepowered/util/ResponseValues;->disableAnalytics:Z

    return v0
.end method

.method public isDisableConfiguration()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/fusepowered/util/ResponseValues;->disableConfiguration:Z

    return v0
.end method

.method public isDisableNotifications()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/fusepowered/util/ResponseValues;->disableNotifications:Z

    return v0
.end method

.method public peekAd()Lcom/fusepowered/util/Ad;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/fusepowered/util/ResponseValues;->adQueueParsed:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/fusepowered/util/Ad;

    return-object p0
.end method

.method public setAccount(Lcom/fusepowered/util/Account;)V
    .locals 0
    .parameter "account"

    .prologue
    .line 246
    iput-object p1, p0, Lcom/fusepowered/util/ResponseValues;->account:Lcom/fusepowered/util/Account;

    .line 247
    return-void
.end method

.method public setAd(Lcom/fusepowered/util/Ad;)V
    .locals 1
    .parameter "ad"

    .prologue
    .line 220
    iget-object v0, p0, Lcom/fusepowered/util/ResponseValues;->adQueueParsed:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 222
    return-void
.end method

.method public setAds(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/AdProvider;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 196
    .local p1, ads:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/fusepowered/util/AdProvider;>;"
    iput-object p1, p0, Lcom/fusepowered/util/ResponseValues;->ads:Ljava/util/ArrayList;

    .line 197
    return-void
.end method

.method public setApplifierId(Ljava/lang/String;)V
    .locals 0
    .parameter "applifierId"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/fusepowered/util/ResponseValues;->applifierId:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setApplifierUseImpact(Z)V
    .locals 0
    .parameter "applifierUseImpact"

    .prologue
    .line 365
    iput-boolean p1, p0, Lcom/fusepowered/util/ResponseValues;->applifierUseImpact:Z

    .line 366
    return-void
.end method

.method public setChatMessages(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "fuseId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/ChatMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 265
    .local p2, chatMessages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/fusepowered/util/ChatMessage;>;"
    iget-object v0, p0, Lcom/fusepowered/util/ResponseValues;->chatMessages:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    return-void
.end method

.method public setDisableAll(Z)V
    .locals 0
    .parameter "disableAll"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/fusepowered/util/ResponseValues;->disableAll:Z

    .line 62
    return-void
.end method

.method public setDisableAnalytics(Z)V
    .locals 0
    .parameter "disableAnalytics"

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/fusepowered/util/ResponseValues;->disableAnalytics:Z

    .line 86
    return-void
.end method

.method public setDisableConfiguration(Z)V
    .locals 0
    .parameter "disableConfiguration"

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/fusepowered/util/ResponseValues;->disableConfiguration:Z

    .line 78
    return-void
.end method

.method public setDisableNotifications(Z)V
    .locals 0
    .parameter "disableNotifications"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/fusepowered/util/ResponseValues;->disableNotifications:Z

    .line 70
    return-void
.end method

.method public setDlc(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/DLC;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 204
    .local p1, dlc:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/fusepowered/util/DLC;>;"
    iput-object p1, p0, Lcom/fusepowered/util/ResponseValues;->dlc:Ljava/util/ArrayList;

    .line 205
    return-void
.end method

.method public setEnemiesList(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/Player;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 309
    .local p1, enemiesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/fusepowered/util/Player;>;"
    iput-object p1, p0, Lcom/fusepowered/util/ResponseValues;->enemiesList:Ljava/util/ArrayList;

    .line 310
    return-void
.end method

.method public setError(Ljava/lang/String;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 333
    iput-object p1, p0, Lcom/fusepowered/util/ResponseValues;->error:Ljava/lang/String;

    .line 334
    return-void
.end method

.method public setFriendsList(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/Player;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 301
    .local p1, friendsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/fusepowered/util/Player;>;"
    iput-object p1, p0, Lcom/fusepowered/util/ResponseValues;->friendsList:Ljava/util/ArrayList;

    .line 302
    return-void
.end method

.method public setFuseId(Ljava/lang/String;)V
    .locals 0
    .parameter "fuseId"

    .prologue
    .line 317
    iput-object p1, p0, Lcom/fusepowered/util/ResponseValues;->fuseId:Ljava/lang/String;

    .line 318
    return-void
.end method

.method public setGameConfigs(Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/GameConfig;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 176
    .local p1, gameConfigs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/fusepowered/util/GameConfig;>;"
    sget-object v3, Lcom/fusepowered/fuseapi/FuseAPI;->appdata:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 179
    .local v1, e:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 180
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 182
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/fusepowered/util/GameConfig;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 184
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/util/GameConfig;

    .line 185
    .local v0, currItem:Lcom/fusepowered/util/GameConfig;
    invoke-virtual {v0}, Lcom/fusepowered/util/GameConfig;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/fusepowered/util/GameConfig;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 186
    const-string v3, "GAME CONFIG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "storing this configuration key:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/fusepowered/util/GameConfig;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " value:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/fusepowered/util/GameConfig;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 188
    .end local v0           #currItem:Lcom/fusepowered/util/GameConfig;
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 189
    return-void
.end method

.method public setGameKeyValuePairs(Lcom/fusepowered/util/GameKeyValuePairs;)V
    .locals 0
    .parameter "gameKeyValuePairs"

    .prologue
    .line 238
    iput-object p1, p0, Lcom/fusepowered/util/ResponseValues;->gameKeyValuePairs:Lcom/fusepowered/util/GameKeyValuePairs;

    .line 239
    return-void
.end method

.method public setIncentives(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/Incentive;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 254
    .local p1, incentives:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/fusepowered/util/Incentive;>;"
    iput-object p1, p0, Lcom/fusepowered/util/ResponseValues;->incentives:Ljava/util/ArrayList;

    .line 255
    return-void
.end method

.method public setMailList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "fuseId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/Mail;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 284
    .local p2, mailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/fusepowered/util/Mail;>;"
    iget-object v0, p0, Lcom/fusepowered/util/ResponseValues;->mailLists:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    return-void
.end method

.method public setMessages(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p1, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/fusepowered/util/Message;>;"
    iput-object p1, p0, Lcom/fusepowered/util/ResponseValues;->messages:Ljava/util/ArrayList;

    .line 148
    return-void
.end method

.method public setReqId(Ljava/lang/String;)V
    .locals 0
    .parameter "requestId"

    .prologue
    .line 321
    iput-object p1, p0, Lcom/fusepowered/util/ResponseValues;->requestId:Ljava/lang/String;

    .line 322
    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 0
    .parameter "sessionIdIn"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/fusepowered/util/ResponseValues;->sessionId:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setSignPosts(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/SignPost;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 273
    .local p1, signPosts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/fusepowered/util/SignPost;>;"
    iput-object p1, p0, Lcom/fusepowered/util/ResponseValues;->signPosts:Ljava/util/ArrayList;

    .line 274
    return-void
.end method

.method public setTimestamp(Ljava/lang/String;)V
    .locals 0
    .parameter "timestamp"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/fusepowered/util/ResponseValues;->timestamp:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setUserCity(Ljava/lang/String;)V
    .locals 0
    .parameter "userCity"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/fusepowered/util/ResponseValues;->userCity:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setUserCountry(Ljava/lang/String;)V
    .locals 0
    .parameter "userCountry"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/fusepowered/util/ResponseValues;->userCountry:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setUserTransactionLogs(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/util/UserTransactionLog;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 293
    .local p1, userTransactionLogs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/fusepowered/util/UserTransactionLog;>;"
    iput-object p1, p0, Lcom/fusepowered/util/ResponseValues;->userTransactionLogs:Ljava/util/ArrayList;

    .line 294
    return-void
.end method

.method public setVungleId(Ljava/lang/String;)V
    .locals 0
    .parameter "vungleId"

    .prologue
    .line 142
    iput-object p1, p0, Lcom/fusepowered/util/ResponseValues;->vungleId:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 338
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ResponseValues [sessionId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fusepowered/util/ResponseValues;->sessionId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", disableAll="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/fusepowered/util/ResponseValues;->disableAll:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", disableNotifications="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/fusepowered/util/ResponseValues;->disableNotifications:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", disableConfiguration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/fusepowered/util/ResponseValues;->disableConfiguration:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", disableAnalytics="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/fusepowered/util/ResponseValues;->disableAnalytics:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", timestamp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/util/ResponseValues;->timestamp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", userCity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/util/ResponseValues;->userCity:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", userCountry="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/util/ResponseValues;->userCountry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", messages="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/util/ResponseValues;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", gameConfigs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/util/ResponseValues;->gameConfigs:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", gameKeyValuePairs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/util/ResponseValues;->gameKeyValuePairs:Lcom/fusepowered/util/GameKeyValuePairs;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ads="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/util/ResponseValues;->ads:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", incentives="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/util/ResponseValues;->incentives:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", chatMessages="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/util/ResponseValues;->chatMessages:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", signPosts="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/util/ResponseValues;->signPosts:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", friendsList="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/util/ResponseValues;->friendsList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", enemiesList="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/util/ResponseValues;->enemiesList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mailLists="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/util/ResponseValues;->mailLists:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", userTransactionLogs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/util/ResponseValues;->userTransactionLogs:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", dlc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/util/ResponseValues;->dlc:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", adQueueSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/util/ResponseValues;->adQueueParsed:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", account="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/util/ResponseValues;->account:Lcom/fusepowered/util/Account;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 361
    .local v0, buf:Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
