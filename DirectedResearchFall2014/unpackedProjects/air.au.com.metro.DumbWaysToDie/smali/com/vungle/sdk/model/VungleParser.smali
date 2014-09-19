.class public Lcom/vungle/sdk/model/VungleParser;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/sdk/model/VungleParser$a;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/sdk/IVungleConstants;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/sdk/VungleCache;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/vungle/sdk/z;
    .locals 14
    .parameter

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v11, 0x0

    const-string v0, "play_percentage"

    const-string v0, "checkpoint"

    .line 73
    .line 75
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 76
    new-instance v0, Lcom/vungle/sdk/z;

    invoke-direct {v0}, Lcom/vungle/sdk/z;-><init>()V

    .line 77
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 79
    sget-object v2, Lcom/vungle/sdk/IVungleConstants;->y:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 80
    sget-object v2, Lcom/vungle/sdk/IVungleConstants;->y:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 81
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/vungle/sdk/z;->a:Ljava/lang/Integer;

    .line 82
    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/vungle/sdk/n;->a(J)V

    .line 208
    :goto_0
    iget-object v1, v0, Lcom/vungle/sdk/z;->i:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/vungle/sdk/z;->j:Ljava/lang/String;

    if-eqz v1, :cond_19

    .line 211
    :cond_0
    iget-object v1, p0, Lcom/vungle/sdk/model/VungleParser;->b:Lcom/vungle/sdk/VungleCache;

    if-eqz v1, :cond_1

    .line 213
    iget-object v1, p0, Lcom/vungle/sdk/model/VungleParser;->b:Lcom/vungle/sdk/VungleCache;

    invoke-virtual {v1, p1}, Lcom/vungle/sdk/VungleCache;->a(Ljava/lang/String;)V

    .line 226
    :cond_1
    :goto_1
    return-object v0

    .line 86
    :cond_2
    sget-object v2, Lcom/vungle/sdk/IVungleConstants;->v:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/vungle/sdk/z;->l:I

    .line 87
    sget-object v2, Lcom/vungle/sdk/IVungleConstants;->w:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/vungle/sdk/z;->m:I

    .line 88
    sget-object v2, Lcom/vungle/sdk/IVungleConstants;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/vungle/sdk/z;->k:Ljava/lang/String;

    .line 89
    sget-object v2, Lcom/vungle/sdk/IVungleConstants;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/vungle/sdk/z;->f:Ljava/lang/String;

    .line 90
    sget-object v2, Lcom/vungle/sdk/IVungleConstants;->t:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/vungle/sdk/z;->d:Ljava/lang/String;

    .line 91
    sget-object v2, Lcom/vungle/sdk/IVungleConstants;->u:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 92
    sget-object v2, Lcom/vungle/sdk/IVungleConstants;->u:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/vungle/sdk/z;->e:Ljava/lang/String;

    .line 96
    :cond_3
    sget-object v2, Lcom/vungle/sdk/IVungleConstants;->p:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x7c

    const/16 v4, 0x5f

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/vungle/sdk/z;->h:Ljava/lang/String;

    .line 98
    sget-object v2, Lcom/vungle/sdk/IVungleConstants;->q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 99
    sget-object v2, Lcom/vungle/sdk/IVungleConstants;->q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/vungle/sdk/z;->b(Ljava/lang/String;)V

    .line 104
    :goto_2
    sget-object v2, Lcom/vungle/sdk/IVungleConstants;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 105
    sget-object v2, Lcom/vungle/sdk/IVungleConstants;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/vungle/sdk/z;->b:Ljava/lang/String;

    .line 110
    :goto_3
    sget-object v2, Lcom/vungle/sdk/IVungleConstants;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 111
    sget-object v2, Lcom/vungle/sdk/IVungleConstants;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/vungle/sdk/z;->a(Ljava/lang/String;)V

    .line 116
    :goto_4
    sget-object v2, Lcom/vungle/sdk/IVungleConstants;->r:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 117
    sget-object v2, Lcom/vungle/sdk/IVungleConstants;->r:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/vungle/sdk/z;->c(Ljava/lang/String;)V

    .line 122
    :goto_5
    sget-object v2, Lcom/vungle/sdk/IVungleConstants;->B:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 123
    sget-object v2, Lcom/vungle/sdk/IVungleConstants;->B:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/vungle/sdk/z;->n:J

    .line 125
    :cond_4
    sget-object v2, Lcom/vungle/sdk/IVungleConstants;->z:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 126
    sget-object v2, Lcom/vungle/sdk/IVungleConstants;->z:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/vungle/sdk/z;->q:I

    .line 128
    :cond_5
    sget-object v2, Lcom/vungle/sdk/IVungleConstants;->A:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 129
    sget-object v2, Lcom/vungle/sdk/IVungleConstants;->A:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/vungle/sdk/z;->p:I

    .line 131
    :cond_6
    sget-object v2, Lcom/vungle/sdk/IVungleConstants;->x:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 132
    sget-object v2, Lcom/vungle/sdk/IVungleConstants;->x:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/vungle/sdk/z;->g:Ljava/lang/String;

    .line 134
    :cond_7
    sget-object v2, Lcom/vungle/sdk/IVungleConstants;->s:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 135
    sget-object v2, Lcom/vungle/sdk/IVungleConstants;->s:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/vungle/sdk/z;->o:J

    .line 138
    :cond_8
    sget-object v2, Lcom/vungle/sdk/IVungleConstants;->D:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 139
    sget-object v2, Lcom/vungle/sdk/IVungleConstants;->D:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/vungle/sdk/z;->a(I)V

    .line 143
    :goto_6
    sget-object v2, Lcom/vungle/sdk/IVungleConstants;->C:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 144
    sget-object v2, Lcom/vungle/sdk/IVungleConstants;->C:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/vungle/sdk/z;->a(J)V

    .line 149
    :goto_7
    sget-object v2, Lcom/vungle/sdk/IVungleConstants;->K:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 151
    sget-object v2, Lcom/vungle/sdk/IVungleConstants;->K:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 157
    iput v2, v0, Lcom/vungle/sdk/z;->r:I

    .line 158
    iget-object v3, p0, Lcom/vungle/sdk/model/VungleParser;->a:Lcom/vungle/sdk/IVungleConstants;

    invoke-static {v2}, Lcom/vungle/sdk/IVungleConstants;->a(I)V

    .line 165
    :goto_8
    const-string v2, "tpat"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 166
    new-instance v2, Lcom/vungle/sdk/aa;

    invoke-direct {v2}, Lcom/vungle/sdk/aa;-><init>()V

    .line 167
    const-string v3, "tpat"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 168
    const-string v3, "play_percentage"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 169
    const-string v3, "play_percentage"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 170
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 171
    new-array v5, v4, [Lcom/vungle/sdk/aa$a;

    move v6, v12

    .line 172
    :goto_9
    if-ge v6, v4, :cond_11

    .line 173
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 174
    new-instance v8, Lcom/vungle/sdk/aa$a;

    invoke-direct {v8}, Lcom/vungle/sdk/aa$a;-><init>()V

    .line 175
    const-string v9, "checkpoint"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 176
    const-string v9, "checkpoint"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v9

    double-to-float v9, v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    iput-object v9, v8, Lcom/vungle/sdk/aa$a;->a:Ljava/lang/Float;

    .line 178
    :cond_9
    const-string v9, "urls"

    invoke-static {v7, v9}, Lcom/vungle/sdk/v;->a(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v8, Lcom/vungle/sdk/aa$a;->b:[Ljava/lang/String;

    .line 179
    aput-object v8, v5, v6

    .line 172
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 101
    :cond_a
    sget-object v2, Lcom/vungle/sdk/IVungleConstants;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/vungle/sdk/z;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 222
    :catch_0
    move-exception v0

    .line 223
    sget-object v1, Lcom/vungle/sdk/IVungleConstants;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/vungle/sdk/r;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v11

    .line 224
    goto/16 :goto_1

    .line 107
    :cond_b
    const/4 v2, 0x0

    :try_start_1
    iput-object v2, v0, Lcom/vungle/sdk/z;->b:Ljava/lang/String;

    goto/16 :goto_3

    .line 113
    :cond_c
    sget-object v2, Lcom/vungle/sdk/IVungleConstants;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/vungle/sdk/z;->a(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 119
    :cond_d
    sget-object v2, Lcom/vungle/sdk/IVungleConstants;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/vungle/sdk/z;->c(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 141
    :cond_e
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/vungle/sdk/z;->a(I)V

    goto/16 :goto_6

    .line 146
    :cond_f
    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v2, v3}, Lcom/vungle/sdk/z;->a(J)V

    goto/16 :goto_7

    .line 162
    :cond_10
    sget v2, Lcom/vungle/sdk/IVungleConstants;->L:I

    iput v2, v0, Lcom/vungle/sdk/z;->r:I

    goto/16 :goto_8

    .line 182
    :cond_11
    sget-object v3, Lcom/vungle/sdk/model/VungleParser$a;->a:Lcom/vungle/sdk/model/VungleParser$a;

    invoke-static {v5, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 183
    iput-object v5, v2, Lcom/vungle/sdk/aa;->a:[Lcom/vungle/sdk/aa$a;

    .line 185
    :cond_12
    const-string v3, "mute"

    invoke-static {v1, v3}, Lcom/vungle/sdk/v;->a(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/vungle/sdk/aa;->b:[Ljava/lang/String;

    .line 186
    const-string v3, "unmute"

    invoke-static {v1, v3}, Lcom/vungle/sdk/v;->a(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/vungle/sdk/aa;->c:[Ljava/lang/String;

    .line 187
    const-string v3, "video_close"

    invoke-static {v1, v3}, Lcom/vungle/sdk/v;->a(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/vungle/sdk/aa;->d:[Ljava/lang/String;

    .line 188
    const-string v3, "postroll_click"

    invoke-static {v1, v3}, Lcom/vungle/sdk/v;->a(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/vungle/sdk/aa;->f:[Ljava/lang/String;

    .line 189
    const-string v3, "postroll_view"

    invoke-static {v1, v3}, Lcom/vungle/sdk/v;->a(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/vungle/sdk/aa;->e:[Ljava/lang/String;

    .line 190
    iput-object v2, v0, Lcom/vungle/sdk/z;->s:Lcom/vungle/sdk/aa;

    .line 194
    :cond_13
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_14

    move v1, v13

    .line 196
    :goto_a
    if-eqz v1, :cond_15

    sget-boolean v2, Lcom/vungle/sdk/n;->r:Z

    if-eqz v2, :cond_15

    .line 197
    const/16 v1, 0xa

    .line 202
    :goto_b
    sput v1, Lcom/vungle/sdk/n;->C:I

    goto/16 :goto_0

    :cond_14
    move v1, v12

    .line 194
    goto :goto_a

    .line 199
    :cond_15
    iget v2, v0, Lcom/vungle/sdk/z;->q:I

    iget v3, v0, Lcom/vungle/sdk/z;->p:I

    if-le v2, v3, :cond_17

    .line 200
    if-eqz v1, :cond_16

    const/4 v1, 0x7

    :goto_c
    sput v1, Lcom/vungle/sdk/n;->C:I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_16
    move v1, v13

    goto :goto_c

    .line 202
    :cond_17
    if-eqz v1, :cond_18

    const/4 v1, 0x6

    goto :goto_b

    :cond_18
    move v1, v12

    goto :goto_b

    :cond_19
    move-object v0, v11

    .line 218
    goto/16 :goto_1

    :cond_1a
    move-object v0, v11

    goto/16 :goto_1
.end method
