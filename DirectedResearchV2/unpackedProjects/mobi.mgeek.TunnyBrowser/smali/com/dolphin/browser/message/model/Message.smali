.class public Lcom/dolphin/browser/message/model/Message;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/dolphin/browser/message/model/Message;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/dolphin/browser/message/model/Message;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Lorg/json/JSONObject;

.field private d:J

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Lcom/dolphin/browser/message/model/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 329
    new-instance v0, Lcom/dolphin/browser/message/model/l;

    invoke-direct {v0}, Lcom/dolphin/browser/message/model/l;-><init>()V

    sput-object v0, Lcom/dolphin/browser/message/model/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/message/model/Message;->a(Landroid/os/Parcel;)V

    .line 54
    return-void
.end method

.method public static a(Ljava/util/List;)J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/message/model/Message;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 391
    const-wide/16 v0, 0x0

    .line 392
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 393
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-wide v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/message/model/Message;

    .line 394
    invoke-virtual {v0}, Lcom/dolphin/browser/message/model/Message;->b()J

    move-result-wide v4

    cmp-long v4, v4, v1

    if-lez v4, :cond_2

    .line 395
    invoke-virtual {v0}, Lcom/dolphin/browser/message/model/Message;->b()J

    move-result-wide v0

    :goto_1
    move-wide v1, v0

    goto :goto_0

    :cond_0
    move-wide v0, v1

    .line 399
    :cond_1
    return-wide v0

    :cond_2
    move-wide v0, v1

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;)Lcom/dolphin/browser/message/model/Message;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 135
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    :goto_0
    return-object v1

    .line 140
    :cond_0
    :try_start_0
    new-instance v0, Lcom/dolphin/browser/message/model/Message;

    invoke-direct {v0}, Lcom/dolphin/browser/message/model/Message;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 141
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 142
    const-string v3, "messageId"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/dolphin/browser/message/model/Message;->a:I

    .line 143
    const-string v3, "action"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/dolphin/browser/message/model/Message;->b:Ljava/lang/String;

    .line 144
    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iput-object v3, v0, Lcom/dolphin/browser/message/model/Message;->c:Lorg/json/JSONObject;

    .line 145
    const-string v3, "lastModified"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/dolphin/browser/message/model/Message;->d:J

    .line 146
    const-string v3, "packageName"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 147
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 148
    const-string v3, "appId"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/dolphin/browser/message/model/Message;->e:Ljava/lang/String;

    .line 149
    const-string v3, "appName"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/dolphin/browser/message/model/Message;->f:Ljava/lang/String;

    .line 150
    const-string v3, "appIcon"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/dolphin/browser/message/model/Message;->g:Ljava/lang/String;

    .line 154
    :goto_1
    const-string v3, "local"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/dolphin/browser/message/model/Message;->a(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 158
    :goto_2
    invoke-static {v0}, Lcom/dolphin/browser/message/model/Message;->b(Lcom/dolphin/browser/message/model/Message;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v0, v1

    :cond_1
    move-object v1, v0

    .line 161
    goto :goto_0

    .line 152
    :cond_2
    :try_start_2
    iput-object v3, v0, Lcom/dolphin/browser/message/model/Message;->h:Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 155
    :catch_0
    move-exception v2

    .line 156
    :goto_3
    invoke-static {v2}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_2

    .line 155
    :catch_1
    move-exception v0

    move-object v2, v0

    move-object v0, v1

    goto :goto_3
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 218
    if-eqz p1, :cond_0

    .line 219
    const-string v0, "read"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dolphin/browser/message/model/Message;->i:Z

    .line 221
    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/message/model/Message;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 196
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    :goto_0
    return-object v0

    .line 200
    :cond_0
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 201
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 202
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 203
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_2

    .line 204
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/dolphin/browser/message/model/Message;->a(Ljava/lang/String;)Lcom/dolphin/browser/message/model/Message;

    move-result-object v5

    .line 205
    if-eqz v5, :cond_1

    .line 206
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 209
    goto :goto_0

    .line 210
    :catch_0
    move-exception v1

    .line 211
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static b(Lcom/dolphin/browser/message/model/Message;)Z
    .locals 2

    .prologue
    .line 188
    if-nez p0, :cond_0

    .line 189
    const/4 v0, 0x0

    .line 191
    :goto_0
    return v0

    :cond_0
    const-string v0, "Notification"

    iget-object v1, p0, Lcom/dolphin/browser/message/model/Message;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private c(Lcom/dolphin/browser/message/model/Message;)I
    .locals 2

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/dolphin/browser/message/model/Message;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/dolphin/browser/message/model/Message;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private d(Lcom/dolphin/browser/message/model/Message;)I
    .locals 4

    .prologue
    .line 312
    .line 313
    iget-wide v0, p0, Lcom/dolphin/browser/message/model/Message;->d:J

    iget-wide v2, p1, Lcom/dolphin/browser/message/model/Message;->d:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 314
    const/4 v0, 0x0

    .line 320
    :goto_0
    return v0

    .line 315
    :cond_0
    iget-wide v0, p0, Lcom/dolphin/browser/message/model/Message;->d:J

    iget-wide v2, p1, Lcom/dolphin/browser/message/model/Message;->d:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 316
    const/4 v0, -0x1

    goto :goto_0

    .line 318
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private i()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 225
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 227
    :try_start_0
    const-string v0, "read"

    iget-boolean v2, p0, Lcom/dolphin/browser/message/model/Message;->i:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :goto_0
    return-object v1

    .line 228
    :catch_0
    move-exception v0

    .line 229
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/dolphin/browser/message/model/Message;->a:I

    return v0
.end method

.method public a(Lcom/dolphin/browser/message/model/Message;)I
    .locals 1

    .prologue
    .line 282
    if-nez p1, :cond_1

    .line 283
    const/4 v0, -0x1

    .line 289
    :cond_0
    :goto_0
    return v0

    .line 285
    :cond_1
    invoke-direct {p0, p1}, Lcom/dolphin/browser/message/model/Message;->c(Lcom/dolphin/browser/message/model/Message;)I

    move-result v0

    .line 286
    if-nez v0, :cond_0

    .line 287
    invoke-direct {p0, p1}, Lcom/dolphin/browser/message/model/Message;->d(Lcom/dolphin/browser/message/model/Message;)I

    move-result v0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/dolphin/browser/message/model/Message;->h()Lcom/dolphin/browser/message/model/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/message/model/a;->a(Landroid/content/Context;)V

    .line 257
    return-void
.end method

.method public a(Landroid/os/Parcel;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 361
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/dolphin/browser/message/model/Message;->a:I

    .line 362
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dolphin/browser/message/model/Message;->b:Ljava/lang/String;

    .line 364
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/dolphin/browser/message/model/Message;->c:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/dolphin/browser/message/model/Message;->d:J

    .line 369
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dolphin/browser/message/model/Message;->h:Ljava/lang/String;

    .line 370
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dolphin/browser/message/model/Message;->e:Ljava/lang/String;

    .line 371
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dolphin/browser/message/model/Message;->f:Ljava/lang/String;

    .line 372
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dolphin/browser/message/model/Message;->g:Ljava/lang/String;

    .line 373
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_1
    iput-boolean v0, p0, Lcom/dolphin/browser/message/model/Message;->i:Z

    .line 374
    return-void

    .line 365
    :catch_0
    move-exception v1

    .line 366
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 373
    :cond_0
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public b()J
    .locals 2

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/dolphin/browser/message/model/Message;->d:J

    return-wide v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/dolphin/browser/message/model/Message;->e:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 19
    check-cast p1, Lcom/dolphin/browser/message/model/Message;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/message/model/Message;->a(Lcom/dolphin/browser/message/model/Message;)I

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/dolphin/browser/message/model/Message;->f:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 326
    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/dolphin/browser/message/model/Message;->g:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 378
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/dolphin/browser/message/model/Message;

    if-eqz v1, :cond_0

    .line 379
    check-cast p1, Lcom/dolphin/browser/message/model/Message;

    .line 380
    iget v1, p0, Lcom/dolphin/browser/message/model/Message;->a:I

    iget v2, p1, Lcom/dolphin/browser/message/model/Message;->a:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 382
    :cond_0
    return v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/dolphin/browser/message/model/Message;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/dolphin/browser/message/model/Message;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/dolphin/browser/message/model/Message;->h:Ljava/lang/String;

    .line 129
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/message/model/Message;->f:Ljava/lang/String;

    goto :goto_0
.end method

.method public h()Lcom/dolphin/browser/message/model/a;
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/dolphin/browser/message/model/Message;->j:Lcom/dolphin/browser/message/model/a;

    if-nez v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/dolphin/browser/message/model/Message;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/dolphin/browser/message/model/Message;->c:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lcom/dolphin/browser/message/model/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/dolphin/browser/message/model/a;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/message/model/Message;->j:Lcom/dolphin/browser/message/model/a;

    .line 238
    iget-object v0, p0, Lcom/dolphin/browser/message/model/Message;->j:Lcom/dolphin/browser/message/model/a;

    iget v1, p0, Lcom/dolphin/browser/message/model/Message;->a:I

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/message/model/a;->a(I)V

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/message/model/Message;->j:Lcom/dolphin/browser/message/model/a;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 387
    iget v0, p0, Lcom/dolphin/browser/message/model/Message;->a:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 167
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 169
    :try_start_0
    const-string v0, "messageId"

    iget v2, p0, Lcom/dolphin/browser/message/model/Message;->a:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 170
    const-string v0, "action"

    iget-object v2, p0, Lcom/dolphin/browser/message/model/Message;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 171
    const-string v0, "value"

    iget-object v2, p0, Lcom/dolphin/browser/message/model/Message;->c:Lorg/json/JSONObject;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 172
    const-string v0, "lastModified"

    iget-wide v2, p0, Lcom/dolphin/browser/message/model/Message;->d:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 173
    iget-object v0, p0, Lcom/dolphin/browser/message/model/Message;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    const-string v0, "appId"

    iget-object v2, p0, Lcom/dolphin/browser/message/model/Message;->e:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 175
    const-string v0, "appName"

    iget-object v2, p0, Lcom/dolphin/browser/message/model/Message;->f:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 176
    const-string v0, "appIcon"

    iget-object v2, p0, Lcom/dolphin/browser/message/model/Message;->g:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 180
    :goto_0
    const-string v0, "local"

    invoke-direct {p0}, Lcom/dolphin/browser/message/model/Message;->i()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 178
    :cond_0
    :try_start_1
    const-string v0, "packageName"

    iget-object v2, p0, Lcom/dolphin/browser/message/model/Message;->h:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 348
    iget v0, p0, Lcom/dolphin/browser/message/model/Message;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 349
    iget-object v0, p0, Lcom/dolphin/browser/message/model/Message;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lcom/dolphin/browser/message/model/Message;->c:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 351
    iget-wide v0, p0, Lcom/dolphin/browser/message/model/Message;->d:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 352
    iget-object v0, p0, Lcom/dolphin/browser/message/model/Message;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 353
    iget-object v0, p0, Lcom/dolphin/browser/message/model/Message;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcom/dolphin/browser/message/model/Message;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 355
    iget-object v0, p0, Lcom/dolphin/browser/message/model/Message;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 356
    iget-boolean v0, p0, Lcom/dolphin/browser/message/model/Message;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 357
    return-void

    .line 356
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
