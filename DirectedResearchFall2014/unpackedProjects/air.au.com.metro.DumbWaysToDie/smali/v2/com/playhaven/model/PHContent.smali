.class public Lv2/com/playhaven/model/PHContent;
.super Ljava/lang/Object;
.source "PHContent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv2/com/playhaven/model/PHContent$TransitionType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lv2/com/playhaven/model/PHContent;",
            ">;"
        }
    .end annotation
.end field

.field public static final PARCEL_NULL:Ljava/lang/String; = "null"


# instance fields
.field public closeButtonDelay:D

.field public closeURL:Ljava/lang/String;

.field public context:Lorg/json/JSONObject;

.field private frameDict:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field public preloaded:Z

.field public transition:Lv2/com/playhaven/model/PHContent$TransitionType;

.field public url:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    new-instance v0, Lv2/com/playhaven/model/PHContent$1;

    invoke-direct {v0}, Lv2/com/playhaven/model/PHContent$1;-><init>()V

    .line 105
    sput-object v0, Lv2/com/playhaven/model/PHContent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 114
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    sget-object v0, Lv2/com/playhaven/model/PHContent$TransitionType;->Modal:Lv2/com/playhaven/model/PHContent$TransitionType;

    iput-object v0, p0, Lv2/com/playhaven/model/PHContent;->transition:Lv2/com/playhaven/model/PHContent$TransitionType;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lv2/com/playhaven/model/PHContent;->preloaded:Z

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lv2/com/playhaven/model/PHContent;->frameDict:Ljava/util/HashMap;

    .line 48
    const-wide/high16 v0, 0x4024

    iput-wide v0, p0, Lv2/com/playhaven/model/PHContent;->closeButtonDelay:D

    .line 49
    sget-object v0, Lv2/com/playhaven/model/PHContent$TransitionType;->Modal:Lv2/com/playhaven/model/PHContent$TransitionType;

    iput-object v0, p0, Lv2/com/playhaven/model/PHContent;->transition:Lv2/com/playhaven/model/PHContent$TransitionType;

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 11
    .parameter "in"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v8, "null"

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    sget-object v6, Lv2/com/playhaven/model/PHContent$TransitionType;->Modal:Lv2/com/playhaven/model/PHContent$TransitionType;

    iput-object v6, p0, Lv2/com/playhaven/model/PHContent;->transition:Lv2/com/playhaven/model/PHContent$TransitionType;

    .line 42
    iput-boolean v9, p0, Lv2/com/playhaven/model/PHContent;->preloaded:Z

    .line 44
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lv2/com/playhaven/model/PHContent;->frameDict:Ljava/util/HashMap;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 60
    .local v4, transition_str:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 61
    const-string v6, "null"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 62
    invoke-static {v4}, Lv2/com/playhaven/model/PHContent$TransitionType;->valueOf(Ljava/lang/String;)Lv2/com/playhaven/model/PHContent$TransitionType;

    move-result-object v6

    iput-object v6, p0, Lv2/com/playhaven/model/PHContent;->transition:Lv2/com/playhaven/model/PHContent$TransitionType;

    .line 64
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lv2/com/playhaven/model/PHContent;->closeURL:Ljava/lang/String;

    .line 66
    iget-object v6, p0, Lv2/com/playhaven/model/PHContent;->closeURL:Ljava/lang/String;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lv2/com/playhaven/model/PHContent;->closeURL:Ljava/lang/String;

    const-string v7, "null"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 67
    const/4 v6, 0x0

    iput-object v6, p0, Lv2/com/playhaven/model/PHContent;->closeURL:Ljava/lang/String;

    .line 70
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, context_str:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 72
    const-string v6, "null"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 73
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lv2/com/playhaven/model/PHContent;->context:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .end local v0           #context_str:Ljava/lang/String;
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 80
    .local v5, url_str:Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 81
    const-string v6, "null"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 82
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, p0, Lv2/com/playhaven/model/PHContent;->url:Landroid/net/Uri;

    .line 84
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v6

    iput-wide v6, p0, Lv2/com/playhaven/model/PHContent;->closeButtonDelay:D

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v6

    if-ne v6, v10, :cond_5

    move v6, v10

    :goto_1
    iput-boolean v6, p0, Lv2/com/playhaven/model/PHContent;->preloaded:Z

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 89
    .local v2, frameBundle:Landroid/os/Bundle;
    if-eqz v2, :cond_4

    .line 90
    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_6

    .line 100
    :cond_4
    return-void

    .line 75
    .end local v2           #frameBundle:Landroid/os/Bundle;
    .end local v5           #url_str:Ljava/lang/String;
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 76
    .local v1, e:Lorg/json/JSONException;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Error hydrating PHContent JSON context from Parcel: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lv2/com/playhaven/utils/PHStringUtil;->log(Ljava/lang/String;)V

    goto :goto_0

    .end local v1           #e:Lorg/json/JSONException;
    .restart local v5       #url_str:Ljava/lang/String;
    :cond_5
    move v6, v9

    .line 86
    goto :goto_1

    .line 90
    .restart local v2       #frameBundle:Landroid/os/Bundle;
    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 92
    .local v3, key:Ljava/lang/String;
    :try_start_1
    iget-object v7, p0, Lv2/com/playhaven/model/PHContent;->frameDict:Ljava/util/HashMap;

    new-instance v8, Lorg/json/JSONObject;

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 93
    :catch_1
    move-exception v7

    move-object v1, v7

    .line 94
    .restart local v1       #e:Lorg/json/JSONException;
    const-string v7, "Error deserializing frameDict from bundle in PHContent"

    invoke-static {v7}, Lv2/com/playhaven/utils/PHStringUtil;->log(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .parameter "dict"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    sget-object v0, Lv2/com/playhaven/model/PHContent$TransitionType;->Modal:Lv2/com/playhaven/model/PHContent$TransitionType;

    iput-object v0, p0, Lv2/com/playhaven/model/PHContent;->transition:Lv2/com/playhaven/model/PHContent$TransitionType;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lv2/com/playhaven/model/PHContent;->preloaded:Z

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lv2/com/playhaven/model/PHContent;->frameDict:Ljava/util/HashMap;

    .line 54
    invoke-virtual {p0, p1}, Lv2/com/playhaven/model/PHContent;->fromJSON(Lorg/json/JSONObject;)V

    .line 55
    return-void
.end method

.method private setFrameDict(Lorg/json/JSONObject;)V
    .locals 5
    .parameter "frame"

    .prologue
    .line 178
    iget-object v3, p0, Lv2/com/playhaven/model/PHContent;->frameDict:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 183
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 185
    .local v2, keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 194
    .end local v2           #keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    return-void

    .line 186
    .restart local v2       #keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 188
    .local v1, key:Ljava/lang/String;
    iget-object v4, p0, Lv2/com/playhaven/model/PHContent;->frameDict:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    invoke-virtual {v4, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 190
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 191
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 253
    const/4 v0, 0x0

    return v0
.end method

.method public fromJSON(Lorg/json/JSONObject;)V
    .locals 13
    .parameter "dict"

    .prologue
    const/4 v12, 0x0

    const-string v6, ""

    .line 124
    :try_start_0
    const-string v6, "frame"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 125
    .local v3, frame:Ljava/lang/Object;
    const-string v6, "url"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 126
    .local v5, url:Ljava/lang/String;
    const-string v6, "transition"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 127
    .local v4, transition:Ljava/lang/String;
    const-string v6, "close_delay"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v6

    iput-wide v6, p0, Lv2/com/playhaven/model/PHContent;->closeButtonDelay:D

    .line 128
    const-string v6, "close_ping"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lv2/com/playhaven/model/PHContent;->closeURL:Ljava/lang/String;

    .line 131
    iget-object v6, p0, Lv2/com/playhaven/model/PHContent;->frameDict:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 132
    instance-of v6, v3, Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 134
    iget-object v7, p0, Lv2/com/playhaven/model/PHContent;->frameDict:Ljava/util/HashMap;

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    new-instance v8, Lorg/json/JSONObject;

    const-string v9, "{\"%s\" : \"%s\"}"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    const/4 v11, 0x1

    aput-object v3, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .end local v3           #frame:Ljava/lang/Object;
    :cond_0
    :goto_0
    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    :goto_1
    iput-object v6, p0, Lv2/com/playhaven/model/PHContent;->url:Landroid/net/Uri;

    .line 142
    const-string v6, "context"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 144
    .local v1, context:Lorg/json/JSONObject;
    sget-object v6, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v6, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 145
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 147
    iput-object v1, p0, Lv2/com/playhaven/model/PHContent;->context:Lorg/json/JSONObject;

    .line 150
    :cond_1
    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_2

    .line 151
    const-string v6, "PH_MODAL"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 152
    sget-object v6, Lv2/com/playhaven/model/PHContent$TransitionType;->Modal:Lv2/com/playhaven/model/PHContent$TransitionType;

    iput-object v6, p0, Lv2/com/playhaven/model/PHContent;->transition:Lv2/com/playhaven/model/PHContent$TransitionType;

    .line 161
    .end local v1           #context:Lorg/json/JSONObject;
    .end local v4           #transition:Ljava/lang/String;
    .end local v5           #url:Ljava/lang/String;
    :cond_2
    :goto_2
    return-void

    .line 135
    .restart local v3       #frame:Ljava/lang/Object;
    .restart local v4       #transition:Ljava/lang/String;
    .restart local v5       #url:Ljava/lang/String;
    :cond_3
    instance-of v6, v3, Lorg/json/JSONObject;

    if-eqz v6, :cond_0

    .line 136
    check-cast v3, Lorg/json/JSONObject;

    .end local v3           #frame:Ljava/lang/Object;
    invoke-direct {p0, v3}, Lv2/com/playhaven/model/PHContent;->setFrameDict(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 158
    .end local v4           #transition:Ljava/lang/String;
    .end local v5           #url:Ljava/lang/String;
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 159
    .local v2, e:Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .end local v2           #e:Lorg/json/JSONException;
    .restart local v4       #transition:Ljava/lang/String;
    .restart local v5       #url:Ljava/lang/String;
    :cond_4
    move-object v6, v12

    .line 139
    goto :goto_1

    .line 153
    .restart local v1       #context:Lorg/json/JSONObject;
    :cond_5
    :try_start_1
    const-string v6, "PH_DIALOG"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 154
    sget-object v6, Lv2/com/playhaven/model/PHContent$TransitionType;->Dialog:Lv2/com/playhaven/model/PHContent$TransitionType;

    iput-object v6, p0, Lv2/com/playhaven/model/PHContent;->transition:Lv2/com/playhaven/model/PHContent$TransitionType;

    goto :goto_2

    .line 156
    :cond_6
    const/4 v6, 0x0

    iput-object v6, p0, Lv2/com/playhaven/model/PHContent;->transition:Lv2/com/playhaven/model/PHContent$TransitionType;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public getFrame(I)Landroid/graphics/RectF;
    .locals 10
    .parameter "orientation"

    .prologue
    const/high16 v9, 0x4f00

    const/4 v8, 0x0

    .line 198
    const/4 v6, 0x2

    if-ne p1, v6, :cond_0

    const-string v6, "PH_LANDSCAPE"

    move-object v2, v6

    .line 200
    .local v2, orientKey:Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lv2/com/playhaven/model/PHContent;->frameDict:Ljava/util/HashMap;

    const-string v7, "PH_FULLSCREEN"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 202
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v8, v8, v9, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 222
    :goto_1
    return-object v6

    .line 198
    .end local v2           #orientKey:Ljava/lang/String;
    :cond_0
    const-string v6, "PH_PORTRAIT"

    move-object v2, v6

    goto :goto_0

    .line 203
    .restart local v2       #orientKey:Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lv2/com/playhaven/model/PHContent;->frameDict:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 205
    const/4 v4, 0x0

    .line 206
    .local v4, x:F
    const/4 v5, 0x0

    .line 207
    .local v5, y:F
    const/4 v3, 0x0

    .line 208
    .local v3, w:F
    const/4 v1, 0x0

    .line 211
    .local v1, h:F
    iget-object v6, p0, Lv2/com/playhaven/model/PHContent;->frameDict:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 212
    .local v0, dict:Lorg/json/JSONObject;
    if-eqz v0, :cond_2

    .line 213
    const-string v6, "x"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-float v4, v6

    .line 214
    const-string v6, "y"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-float v5, v6

    .line 215
    const-string v6, "w"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-float v3, v6

    .line 216
    const-string v6, "h"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-float v1, v6

    .line 217
    new-instance v6, Landroid/graphics/RectF;

    add-float v7, v4, v3

    add-float v8, v5, v1

    invoke-direct {v6, v4, v5, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_1

    .line 222
    .end local v0           #dict:Lorg/json/JSONObject;
    .end local v1           #h:F
    .end local v3           #w:F
    .end local v4           #x:F
    .end local v5           #y:F
    :cond_2
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v8, v8, v8, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_1
.end method

.method public getFrames()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    iget-object v0, p0, Lv2/com/playhaven/model/PHContent;->frameDict:Ljava/util/HashMap;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lv2/com/playhaven/model/PHContent;->context:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lv2/com/playhaven/model/PHContent;->context:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setFrames(Ljava/util/HashMap;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 174
    .local p1, frameDict:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lorg/json/JSONObject;>;"
    iput-object p1, p0, Lv2/com/playhaven/model/PHContent;->frameDict:Ljava/util/HashMap;

    .line 175
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x2

    .line 227
    const-string v1, "(NULL)"

    .line 229
    .local v1, formattedJson:Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lv2/com/playhaven/model/PHContent;->context:Lorg/json/JSONObject;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 237
    :goto_0
    const-string v3, "Close URL: %s - Close Delay: %.1f - URL: %s\n\n---------------------------------\nJSON Context: %s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 241
    iget-object v6, p0, Lv2/com/playhaven/model/PHContent;->closeURL:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-wide v6, p0, Lv2/com/playhaven/model/PHContent;->closeButtonDelay:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    iget-object v5, p0, Lv2/com/playhaven/model/PHContent;->url:Landroid/net/Uri;

    aput-object v5, v4, v8

    const/4 v5, 0x3

    aput-object v1, v4, v5

    .line 236
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 243
    .local v2, message:Ljava/lang/String;
    return-object v2

    .line 230
    .end local v2           #message:Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 231
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 232
    const-string v1, "(NULL)"

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .parameter "out"
    .parameter "flags"

    .prologue
    const-string v3, "null"

    .line 258
    iget-object v2, p0, Lv2/com/playhaven/model/PHContent;->transition:Lv2/com/playhaven/model/PHContent$TransitionType;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lv2/com/playhaven/model/PHContent;->transition:Lv2/com/playhaven/model/PHContent$TransitionType;

    invoke-virtual {v2}, Lv2/com/playhaven/model/PHContent$TransitionType;->name()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 259
    iget-object v2, p0, Lv2/com/playhaven/model/PHContent;->closeURL:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lv2/com/playhaven/model/PHContent;->closeURL:Ljava/lang/String;

    :goto_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 260
    iget-object v2, p0, Lv2/com/playhaven/model/PHContent;->context:Lorg/json/JSONObject;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lv2/com/playhaven/model/PHContent;->context:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 261
    iget-object v2, p0, Lv2/com/playhaven/model/PHContent;->url:Landroid/net/Uri;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lv2/com/playhaven/model/PHContent;->url:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 262
    iget-wide v2, p0, Lv2/com/playhaven/model/PHContent;->closeButtonDelay:D

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    .line 263
    iget-boolean v2, p0, Lv2/com/playhaven/model/PHContent;->preloaded:Z

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    :goto_4
    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 265
    iget-object v2, p0, Lv2/com/playhaven/model/PHContent;->frameDict:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 267
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 268
    .local v0, frameBundle:Landroid/os/Bundle;
    iget-object v2, p0, Lv2/com/playhaven/model/PHContent;->frameDict:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_6

    .line 271
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 273
    .end local v0           #frameBundle:Landroid/os/Bundle;
    :cond_0
    return-void

    .line 258
    :cond_1
    const-string v2, "null"

    move-object v2, v3

    goto :goto_0

    .line 259
    :cond_2
    const-string v2, "null"

    move-object v2, v3

    goto :goto_1

    .line 260
    :cond_3
    const-string v2, "null"

    move-object v2, v3

    goto :goto_2

    .line 261
    :cond_4
    const-string v2, "null"

    move-object v2, v3

    goto :goto_3

    .line 263
    :cond_5
    const/4 v2, 0x0

    goto :goto_4

    .line 268
    .restart local v0       #frameBundle:Landroid/os/Bundle;
    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 269
    .local v1, key:Ljava/lang/String;
    iget-object v2, p0, Lv2/com/playhaven/model/PHContent;->frameDict:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5
.end method
