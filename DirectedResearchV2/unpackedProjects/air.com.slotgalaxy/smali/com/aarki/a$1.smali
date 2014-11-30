.class final Lcom/aarki/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aarki/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/aarki/a;


# direct methods
.method constructor <init>(Lcom/aarki/a;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/aarki/a$1;->a:Lcom/aarki/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .prologue
    const-wide/16 v10, 0xe10

    const/4 v8, 0x0

    const/4 v9, 0x1

    const-string v12, "Event: "

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Stored referrer: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aarki/a$1;->a:Lcom/aarki/a;

    invoke-static {v1}, Lcom/aarki/a;->a(Lcom/aarki/a;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "referrer"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 114
    iget-object v0, p0, Lcom/aarki/a$1;->a:Lcom/aarki/a;

    invoke-static {v0}, Lcom/aarki/a;->a(Lcom/aarki/a;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v4

    .line 115
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 116
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 117
    const-string v2, "event:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 119
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Event: "

    invoke-direct {v6, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v2, :cond_1

    const-string v7, "null"

    :goto_1
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Event val = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    const-string v6, "w:"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 122
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Found: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    new-instance v0, Lcom/aarki/a$a;

    invoke-direct {v0, v2}, Lcom/aarki/a$a;-><init>(Ljava/lang/String;)V

    .line 125
    iget-object v2, v0, Lcom/aarki/a$a;->b:Ljava/lang/String;

    if-eqz v2, :cond_2

    move v2, v9

    :goto_2
    if-eqz v2, :cond_0

    .line 126
    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 119
    :cond_1
    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_2
    move v2, v8

    .line 125
    goto :goto_2

    .line 132
    :cond_3
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 133
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v0

    .line 134
    const-string v1, "gmt"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "Checking "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " events from "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " prefs at: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    iget-object v0, p0, Lcom/aarki/a$1;->a:Lcom/aarki/a;

    invoke-static {v0}, Lcom/aarki/a;->b(Lcom/aarki/a;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 138
    iget-object v0, p0, Lcom/aarki/a$1;->a:Lcom/aarki/a;

    invoke-static {v0, v8}, Lcom/aarki/a;->a(Lcom/aarki/a;Z)Z

    .line 141
    :cond_4
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 142
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 143
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aarki/a$a;

    .line 144
    invoke-virtual {v0}, Lcom/aarki/a$a;->a()Ljava/lang/String;

    move-result-object v4

    .line 146
    iget-object v5, v0, Lcom/aarki/a$a;->a:Ljava/util/Date;

    invoke-virtual {v5, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 147
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Reporting event "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Event: "

    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/aarki/a$a;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", date: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/aarki/a$a;->a:Ljava/util/Date;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", params: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/aarki/a$a;->d:Ljava/util/List;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    iget-object v5, p0, Lcom/aarki/a$1;->a:Lcom/aarki/a;

    invoke-static {v5}, Lcom/aarki/a;->a(Lcom/aarki/a;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 150
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "p"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v1, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 151
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 153
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 154
    iget-object v6, v0, Lcom/aarki/a$a;->b:Ljava/lang/String;

    const-string v7, "__install__"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 155
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "ofr"

    iget-object v8, v0, Lcom/aarki/a$a;->b:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    :cond_6
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "app_sec_key"

    invoke-static {}, Lcom/aarki/b;->l()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "sdk_version"

    const-string v8, "2.8"

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    new-instance v6, Lcom/aarki/c;

    invoke-direct {v6, v1}, Lcom/aarki/c;-><init>(Ljava/lang/String;)V

    .line 161
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "http://postback.aarki.net/appcontact/v1"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v8, v0, Lcom/aarki/a$a;->c:Z

    if-eqz v8, :cond_7

    const-string v8, "/activity.json"

    :goto_4
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5}, Lcom/aarki/c;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, v0, Lcom/aarki/a$a;->d:Ljava/util/List;

    new-instance v7, Lcom/aarki/a$1$1;

    invoke-direct {v7, p0, v1, v4}, Lcom/aarki/a$1$1;-><init>(Lcom/aarki/a$1;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v5, v0, v7}, Lcom/aarki/c;->a(Ljava/lang/String;Ljava/util/List;Lcom/aarki/c$b;)V

    goto/16 :goto_3

    :cond_7
    const-string v8, "/event.json"

    goto :goto_4

    .line 198
    :cond_8
    iget-object v0, p0, Lcom/aarki/a$1;->a:Lcom/aarki/a;

    invoke-static {v0}, Lcom/aarki/a;->b(Lcom/aarki/a;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 199
    iget-object v0, p0, Lcom/aarki/a$1;->a:Lcom/aarki/a;

    iget-object v1, p0, Lcom/aarki/a$1;->a:Lcom/aarki/a;

    invoke-static {v1}, Lcom/aarki/a;->d(Lcom/aarki/a;)J

    move-result-wide v1

    shl-long/2addr v1, v9

    invoke-static {v1, v2, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/aarki/a;->a(Lcom/aarki/a;J)J

    .line 204
    :goto_5
    iget-object v0, p0, Lcom/aarki/a$1;->a:Lcom/aarki/a;

    invoke-static {v0}, Lcom/aarki/a;->e(Lcom/aarki/a;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/aarki/a$1;->a:Lcom/aarki/a;

    invoke-static {v1}, Lcom/aarki/a;->d(Lcom/aarki/a;)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 205
    return-void

    .line 201
    :cond_9
    iget-object v0, p0, Lcom/aarki/a$1;->a:Lcom/aarki/a;

    invoke-static {v0, v10, v11}, Lcom/aarki/a;->a(Lcom/aarki/a;J)J

    goto :goto_5
.end method
