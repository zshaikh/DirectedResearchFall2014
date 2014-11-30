.class public Lcom/dolphin/browser/message/e;
.super Ljava/util/Observable;
.source "MessagesStore.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/dolphin/browser/message/e;


# instance fields
.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/message/model/Message;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/content/Context;

.field private e:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/dolphin/browser/message/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/message/e;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Z)V
    .locals 3

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 71
    new-instance v0, Lcom/dolphin/browser/message/f;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/message/f;-><init>(Lcom/dolphin/browser/message/e;)V

    iput-object v0, p0, Lcom/dolphin/browser/message/e;->e:Landroid/content/BroadcastReceiver;

    .line 38
    iput-object p1, p0, Lcom/dolphin/browser/message/e;->d:Landroid/content/Context;

    .line 39
    if-eqz p2, :cond_0

    .line 40
    invoke-direct {p0}, Lcom/dolphin/browser/message/e;->d()V

    .line 42
    :cond_0
    sget-object v0, Lcom/dolphin/browser/message/e;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receiveUpdates: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    return-void
.end method

.method public static a()Lcom/dolphin/browser/message/e;
    .locals 3

    .prologue
    .line 46
    sget-object v0, Lcom/dolphin/browser/message/e;->b:Lcom/dolphin/browser/message/e;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/dolphin/browser/message/e;

    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v1

    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dolphin/browser/core/Configuration;->getMessageStoreReceiveUpdates()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/dolphin/browser/message/e;-><init>(Landroid/content/Context;Z)V

    sput-object v0, Lcom/dolphin/browser/message/e;->b:Lcom/dolphin/browser/message/e;

    .line 51
    :cond_0
    sget-object v0, Lcom/dolphin/browser/message/e;->b:Lcom/dolphin/browser/message/e;

    return-object v0
.end method

.method private c(I)Lcom/dolphin/browser/message/model/Message;
    .locals 3

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/dolphin/browser/message/e;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/message/model/Message;

    .line 222
    invoke-virtual {v0}, Lcom/dolphin/browser/message/model/Message;->a()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 226
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()V
    .locals 4

    .prologue
    .line 63
    iget-object v0, p0, Lcom/dolphin/browser/message/e;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/dolphin/browser/message/e;->e:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.dolphin.browser.action.UPDATE_MESSAGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 64
    return-void
.end method

.method private e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/message/model/Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/dolphin/browser/message/e;->c:Ljava/util/List;

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/message/e;->c:Ljava/util/List;

    .line 134
    invoke-direct {p0}, Lcom/dolphin/browser/message/e;->h()V

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/message/e;->c:Ljava/util/List;

    return-object v0
.end method

.method private f()V
    .locals 6

    .prologue
    const/4 v5, 0x5

    .line 255
    invoke-direct {p0}, Lcom/dolphin/browser/message/e;->e()Ljava/util/List;

    move-result-object v2

    .line 256
    invoke-virtual {p0}, Lcom/dolphin/browser/message/e;->c()Ljava/util/List;

    move-result-object v0

    .line 257
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 258
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/message/model/m;

    .line 259
    invoke-virtual {v0}, Lcom/dolphin/browser/message/model/m;->b()I

    move-result v1

    .line 260
    if-le v1, v5, :cond_0

    .line 261
    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-lt v1, v5, :cond_0

    .line 262
    invoke-virtual {v0, v1}, Lcom/dolphin/browser/message/model/m;->a(I)Lcom/dolphin/browser/message/model/Message;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 261
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 267
    :cond_1
    return-void
.end method

.method private g()V
    .locals 5

    .prologue
    .line 271
    iget-object v0, p0, Lcom/dolphin/browser/message/e;->c:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 272
    invoke-direct {p0}, Lcom/dolphin/browser/message/e;->j()V

    .line 273
    invoke-direct {p0}, Lcom/dolphin/browser/message/e;->i()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 274
    iget-object v0, p0, Lcom/dolphin/browser/message/e;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 275
    const-string v0, "message_count"

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 276
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "message"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/dolphin/browser/message/e;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/message/model/Message;

    invoke-virtual {v0}, Lcom/dolphin/browser/message/model/Message;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 276
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 279
    :cond_0
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 281
    :cond_1
    return-void
.end method

.method private h()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 285
    iget-object v1, p0, Lcom/dolphin/browser/message/e;->c:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 286
    invoke-direct {p0}, Lcom/dolphin/browser/message/e;->i()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 287
    const-string v2, "message_count"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 288
    :goto_0
    if-ge v0, v2, :cond_0

    .line 289
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "message"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 290
    iget-object v4, p0, Lcom/dolphin/browser/message/e;->c:Ljava/util/List;

    invoke-static {v3}, Lcom/dolphin/browser/message/model/Message;->a(Ljava/lang/String;)Lcom/dolphin/browser/message/model/Message;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 293
    :cond_0
    return-void
.end method

.method private i()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 297
    iget-object v0, p0, Lcom/dolphin/browser/message/e;->d:Landroid/content/Context;

    const-string v1, "messages"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private j()V
    .locals 1

    .prologue
    .line 302
    invoke-direct {p0}, Lcom/dolphin/browser/message/e;->i()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 303
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/message/model/Message;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 150
    const/4 v0, 0x0

    .line 151
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 152
    invoke-direct {p0}, Lcom/dolphin/browser/message/e;->e()Ljava/util/List;

    move-result-object v2

    .line 153
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/message/model/Message;

    .line 154
    invoke-virtual {v0}, Lcom/dolphin/browser/message/model/Message;->a()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/dolphin/browser/message/e;->b(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 155
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    .line 159
    :cond_0
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 160
    invoke-direct {p0}, Lcom/dolphin/browser/message/e;->f()V

    .line 161
    invoke-direct {p0}, Lcom/dolphin/browser/message/e;->g()V

    .line 162
    invoke-virtual {p0}, Lcom/dolphin/browser/message/e;->setChanged()V

    .line 163
    invoke-virtual {p0}, Lcom/dolphin/browser/message/e;->notifyObservers()V

    move v0, v1

    .line 165
    :cond_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 193
    invoke-direct {p0, p1}, Lcom/dolphin/browser/message/e;->c(I)Lcom/dolphin/browser/message/model/Message;

    move-result-object v0

    .line 194
    if-eqz v0, :cond_0

    .line 195
    invoke-direct {p0}, Lcom/dolphin/browser/message/e;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 196
    invoke-direct {p0}, Lcom/dolphin/browser/message/e;->e()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 197
    invoke-direct {p0}, Lcom/dolphin/browser/message/e;->g()V

    .line 198
    invoke-virtual {p0}, Lcom/dolphin/browser/message/e;->setChanged()V

    .line 199
    invoke-virtual {p0}, Lcom/dolphin/browser/message/e;->notifyObservers()V

    .line 201
    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/message/e;->c:Ljava/util/List;

    .line 83
    invoke-direct {p0}, Lcom/dolphin/browser/message/e;->e()Ljava/util/List;

    .line 84
    invoke-virtual {p0}, Lcom/dolphin/browser/message/e;->setChanged()V

    .line 85
    invoke-virtual {p0}, Lcom/dolphin/browser/message/e;->notifyObservers()V

    .line 86
    return-void
.end method

.method public b(I)Z
    .locals 1

    .prologue
    .line 205
    invoke-direct {p0, p1}, Lcom/dolphin/browser/message/e;->c(I)Lcom/dolphin/browser/message/model/Message;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/message/model/m;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/dolphin/browser/message/e;->e()Ljava/util/List;

    move-result-object v4

    .line 96
    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 97
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 98
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 99
    const/4 v0, 0x0

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/message/model/Message;

    .line 100
    new-instance v1, Lcom/dolphin/browser/message/model/m;

    invoke-virtual {v0}, Lcom/dolphin/browser/message/model/Message;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dolphin/browser/message/model/Message;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/dolphin/browser/message/model/Message;->e()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/dolphin/browser/message/model/Message;->f()Z

    move-result v8

    invoke-direct {v1, v3, v6, v7, v8}, Lcom/dolphin/browser/message/model/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 102
    invoke-virtual {v1, v0}, Lcom/dolphin/browser/message/model/m;->a(Lcom/dolphin/browser/message/model/Message;)V

    .line 103
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    const/4 v0, 0x1

    move v3, v0

    :goto_0
    if-ge v3, v5, :cond_1

    .line 105
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/message/model/Message;

    .line 106
    invoke-virtual {v0}, Lcom/dolphin/browser/message/model/Message;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/dolphin/browser/message/model/m;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 107
    new-instance v1, Lcom/dolphin/browser/message/model/m;

    invoke-virtual {v0}, Lcom/dolphin/browser/message/model/Message;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/dolphin/browser/message/model/Message;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/dolphin/browser/message/model/Message;->e()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/dolphin/browser/message/model/Message;->f()Z

    move-result v9

    invoke-direct {v1, v6, v7, v8, v9}, Lcom/dolphin/browser/message/model/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 109
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_0
    invoke-virtual {v1, v0}, Lcom/dolphin/browser/message/model/m;->a(Lcom/dolphin/browser/message/model/Message;)V

    .line 104
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 113
    :cond_1
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    move-object v0, v2

    .line 116
    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
