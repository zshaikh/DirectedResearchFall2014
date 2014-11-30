.class public Lcom/c/b/c/t;
.super Ljava/lang/Object;
.source "ResourceAttributes.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/c/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Lorg/apache/c/b",
        "<",
        "Lcom/c/b/c/t;",
        "Lcom/c/b/c/u;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/c/b/c/u;",
            "Lorg/apache/c/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lorg/apache/c/b/j;

.field private static final c:Lorg/apache/c/b/b;

.field private static final d:Lorg/apache/c/b/b;

.field private static final e:Lorg/apache/c/b/b;

.field private static final f:Lorg/apache/c/b/b;

.field private static final g:Lorg/apache/c/b/b;

.field private static final h:Lorg/apache/c/b/b;

.field private static final i:Lorg/apache/c/b/b;

.field private static final j:Lorg/apache/c/b/b;

.field private static final k:Lorg/apache/c/b/b;

.field private static final l:Lorg/apache/c/b/b;

.field private static final m:Lorg/apache/c/b/b;

.field private static final n:Lorg/apache/c/b/b;


# instance fields
.field private A:[Z

.field private o:Ljava/lang/String;

.field private p:J

.field private q:D

.field private r:D

.field private s:D

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Z

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Z

.field private z:Lcom/c/b/c/e;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/16 v10, 0xc

    const/16 v9, 0xa

    const/4 v8, 0x4

    const/16 v7, 0xb

    const/4 v6, 0x2

    .line 106
    new-instance v0, Lorg/apache/c/b/j;

    const-string v1, "ResourceAttributes"

    invoke-direct {v0, v1}, Lorg/apache/c/b/j;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/c/b/c/t;->b:Lorg/apache/c/b/j;

    .line 108
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "sourceURL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/c/t;->c:Lorg/apache/c/b/b;

    .line 109
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "timestamp"

    invoke-direct {v0, v1, v9, v6}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/c/t;->d:Lorg/apache/c/b/b;

    .line 110
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "latitude"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v8, v2}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/c/t;->e:Lorg/apache/c/b/b;

    .line 111
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "longitude"

    invoke-direct {v0, v1, v8, v8}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/c/t;->f:Lorg/apache/c/b/b;

    .line 112
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "altitude"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v8, v2}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/c/t;->g:Lorg/apache/c/b/b;

    .line 113
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "cameraMake"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/c/t;->h:Lorg/apache/c/b/b;

    .line 114
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "cameraModel"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/c/t;->i:Lorg/apache/c/b/b;

    .line 115
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "clientWillIndex"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/c/t;->j:Lorg/apache/c/b/b;

    .line 116
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "recoType"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/c/t;->k:Lorg/apache/c/b/b;

    .line 117
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "fileName"

    invoke-direct {v0, v1, v7, v9}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/c/t;->l:Lorg/apache/c/b/b;

    .line 118
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "attachment"

    invoke-direct {v0, v1, v6, v7}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/c/t;->m:Lorg/apache/c/b/b;

    .line 119
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "applicationData"

    invoke-direct {v0, v1, v10, v10}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/c/t;->n:Lorg/apache/c/b/b;

    .line 236
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/c/b/c/u;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 237
    sget-object v1, Lcom/c/b/c/u;->a:Lcom/c/b/c/u;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "sourceURL"

    new-instance v4, Lorg/apache/c/a/c;

    invoke-direct {v4, v7}, Lorg/apache/c/a/c;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-object v1, Lcom/c/b/c/u;->b:Lcom/c/b/c/u;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "timestamp"

    new-instance v4, Lorg/apache/c/a/c;

    const-string v5, "Timestamp"

    invoke-direct {v4, v9, v5}, Lorg/apache/c/a/c;-><init>(BLjava/lang/String;)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    sget-object v1, Lcom/c/b/c/u;->c:Lcom/c/b/c/u;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "latitude"

    new-instance v4, Lorg/apache/c/a/c;

    invoke-direct {v4, v8}, Lorg/apache/c/a/c;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sget-object v1, Lcom/c/b/c/u;->d:Lcom/c/b/c/u;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "longitude"

    new-instance v4, Lorg/apache/c/a/c;

    invoke-direct {v4, v8}, Lorg/apache/c/a/c;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    sget-object v1, Lcom/c/b/c/u;->e:Lcom/c/b/c/u;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "altitude"

    new-instance v4, Lorg/apache/c/a/c;

    invoke-direct {v4, v8}, Lorg/apache/c/a/c;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    sget-object v1, Lcom/c/b/c/u;->f:Lcom/c/b/c/u;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "cameraMake"

    new-instance v4, Lorg/apache/c/a/c;

    invoke-direct {v4, v7}, Lorg/apache/c/a/c;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    sget-object v1, Lcom/c/b/c/u;->g:Lcom/c/b/c/u;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "cameraModel"

    new-instance v4, Lorg/apache/c/a/c;

    invoke-direct {v4, v7}, Lorg/apache/c/a/c;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    sget-object v1, Lcom/c/b/c/u;->h:Lcom/c/b/c/u;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "clientWillIndex"

    new-instance v4, Lorg/apache/c/a/c;

    invoke-direct {v4, v6}, Lorg/apache/c/a/c;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sget-object v1, Lcom/c/b/c/u;->i:Lcom/c/b/c/u;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "recoType"

    new-instance v4, Lorg/apache/c/a/c;

    invoke-direct {v4, v7}, Lorg/apache/c/a/c;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-object v1, Lcom/c/b/c/u;->j:Lcom/c/b/c/u;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "fileName"

    new-instance v4, Lorg/apache/c/a/c;

    invoke-direct {v4, v7}, Lorg/apache/c/a/c;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    sget-object v1, Lcom/c/b/c/u;->k:Lcom/c/b/c/u;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "attachment"

    new-instance v4, Lorg/apache/c/a/c;

    invoke-direct {v4, v6}, Lorg/apache/c/a/c;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    sget-object v1, Lcom/c/b/c/u;->l:Lcom/c/b/c/u;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "applicationData"

    new-instance v4, Lorg/apache/c/a/g;

    const-class v5, Lcom/c/b/c/e;

    invoke-direct {v4, v10, v5}, Lorg/apache/c/a/g;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/c/b/c/t;->a:Ljava/util/Map;

    .line 262
    const-class v0, Lcom/c/b/c/t;

    sget-object v1, Lcom/c/b/c/t;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/c/a/b;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 263
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    const/4 v0, 0x6

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/c/b/c/t;->A:[Z

    .line 266
    return-void
.end method


# virtual methods
.method public a(Lorg/apache/c/b/f;)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x4

    const/16 v4, 0xb

    const/4 v3, 0x1

    .line 1024
    invoke-virtual {p1}, Lorg/apache/c/b/f;->j()Lorg/apache/c/b/j;

    .line 1027
    :goto_0
    invoke-virtual {p1}, Lorg/apache/c/b/f;->l()Lorg/apache/c/b/b;

    move-result-object v0

    .line 1028
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    if-nez v1, :cond_0

    .line 1128
    invoke-virtual {p1}, Lorg/apache/c/b/f;->k()V

    .line 1129
    invoke-virtual {p0}, Lcom/c/b/c/t;->m()V

    .line 1130
    return-void

    .line 1031
    :cond_0
    iget-short v1, v0, Lorg/apache/c/b/b;->c:S

    packed-switch v1, :pswitch_data_0

    .line 1124
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    .line 1126
    :goto_1
    invoke-virtual {p1}, Lorg/apache/c/b/f;->m()V

    goto :goto_0

    .line 1033
    :pswitch_0
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    if-ne v1, v4, :cond_1

    .line 1034
    invoke-virtual {p1}, Lorg/apache/c/b/f;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/c/b/c/t;->o:Ljava/lang/String;

    goto :goto_1

    .line 1036
    :cond_1
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto :goto_1

    .line 1040
    :pswitch_1
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    .line 1041
    invoke-virtual {p1}, Lorg/apache/c/b/f;->x()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/c/b/c/t;->p:J

    .line 1042
    invoke-virtual {p0, v3}, Lcom/c/b/c/t;->a(Z)V

    goto :goto_1

    .line 1044
    :cond_2
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto :goto_1

    .line 1048
    :pswitch_2
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    if-ne v1, v5, :cond_3

    .line 1049
    invoke-virtual {p1}, Lorg/apache/c/b/f;->y()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/c/b/c/t;->q:D

    .line 1050
    invoke-virtual {p0, v3}, Lcom/c/b/c/t;->b(Z)V

    goto :goto_1

    .line 1052
    :cond_3
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto :goto_1

    .line 1056
    :pswitch_3
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    if-ne v1, v5, :cond_4

    .line 1057
    invoke-virtual {p1}, Lorg/apache/c/b/f;->y()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/c/b/c/t;->r:D

    .line 1058
    invoke-virtual {p0, v3}, Lcom/c/b/c/t;->c(Z)V

    goto :goto_1

    .line 1060
    :cond_4
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto :goto_1

    .line 1064
    :pswitch_4
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    if-ne v1, v5, :cond_5

    .line 1065
    invoke-virtual {p1}, Lorg/apache/c/b/f;->y()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/c/b/c/t;->s:D

    .line 1066
    invoke-virtual {p0, v3}, Lcom/c/b/c/t;->d(Z)V

    goto :goto_1

    .line 1068
    :cond_5
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto :goto_1

    .line 1072
    :pswitch_5
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    if-ne v1, v4, :cond_6

    .line 1073
    invoke-virtual {p1}, Lorg/apache/c/b/f;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/c/b/c/t;->t:Ljava/lang/String;

    goto :goto_1

    .line 1075
    :cond_6
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto :goto_1

    .line 1079
    :pswitch_6
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    if-ne v1, v4, :cond_7

    .line 1080
    invoke-virtual {p1}, Lorg/apache/c/b/f;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/c/b/c/t;->u:Ljava/lang/String;

    goto/16 :goto_1

    .line 1082
    :cond_7
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto/16 :goto_1

    .line 1086
    :pswitch_7
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    if-ne v1, v6, :cond_8

    .line 1087
    invoke-virtual {p1}, Lorg/apache/c/b/f;->t()Z

    move-result v0

    iput-boolean v0, p0, Lcom/c/b/c/t;->v:Z

    .line 1088
    invoke-virtual {p0, v3}, Lcom/c/b/c/t;->e(Z)V

    goto/16 :goto_1

    .line 1090
    :cond_8
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto/16 :goto_1

    .line 1094
    :pswitch_8
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    if-ne v1, v4, :cond_9

    .line 1095
    invoke-virtual {p1}, Lorg/apache/c/b/f;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/c/b/c/t;->w:Ljava/lang/String;

    goto/16 :goto_1

    .line 1097
    :cond_9
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto/16 :goto_1

    .line 1101
    :pswitch_9
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    if-ne v1, v4, :cond_a

    .line 1102
    invoke-virtual {p1}, Lorg/apache/c/b/f;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/c/b/c/t;->x:Ljava/lang/String;

    goto/16 :goto_1

    .line 1104
    :cond_a
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto/16 :goto_1

    .line 1108
    :pswitch_a
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    if-ne v1, v6, :cond_b

    .line 1109
    invoke-virtual {p1}, Lorg/apache/c/b/f;->t()Z

    move-result v0

    iput-boolean v0, p0, Lcom/c/b/c/t;->y:Z

    .line 1110
    invoke-virtual {p0, v3}, Lcom/c/b/c/t;->f(Z)V

    goto/16 :goto_1

    .line 1112
    :cond_b
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto/16 :goto_1

    .line 1116
    :pswitch_b
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    const/16 v2, 0xc

    if-ne v1, v2, :cond_c

    .line 1117
    new-instance v0, Lcom/c/b/c/e;

    invoke-direct {v0}, Lcom/c/b/c/e;-><init>()V

    iput-object v0, p0, Lcom/c/b/c/t;->z:Lcom/c/b/c/e;

    .line 1118
    iget-object v0, p0, Lcom/c/b/c/t;->z:Lcom/c/b/c/e;

    invoke-virtual {v0, p1}, Lcom/c/b/c/e;->a(Lorg/apache/c/b/f;)V

    goto/16 :goto_1

    .line 1120
    :cond_c
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto/16 :goto_1

    .line 1031
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 366
    iget-object v0, p0, Lcom/c/b/c/t;->A:[Z

    const/4 v1, 0x0

    aput-boolean p1, v0, v1

    .line 367
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/c/b/c/t;->o:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/c/b/c/t;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 781
    if-nez p1, :cond_1

    .line 892
    :cond_0
    :goto_0
    return v0

    .line 784
    :cond_1
    invoke-virtual {p0}, Lcom/c/b/c/t;->a()Z

    move-result v1

    .line 785
    invoke-virtual {p1}, Lcom/c/b/c/t;->a()Z

    move-result v2

    .line 786
    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    .line 787
    :cond_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 789
    iget-object v1, p0, Lcom/c/b/c/t;->o:Ljava/lang/String;

    iget-object v2, p1, Lcom/c/b/c/t;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 793
    :cond_3
    invoke-virtual {p0}, Lcom/c/b/c/t;->b()Z

    move-result v1

    .line 794
    invoke-virtual {p1}, Lcom/c/b/c/t;->b()Z

    move-result v2

    .line 795
    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    .line 796
    :cond_4
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 798
    iget-wide v1, p0, Lcom/c/b/c/t;->p:J

    iget-wide v3, p1, Lcom/c/b/c/t;->p:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 802
    :cond_5
    invoke-virtual {p0}, Lcom/c/b/c/t;->c()Z

    move-result v1

    .line 803
    invoke-virtual {p1}, Lcom/c/b/c/t;->c()Z

    move-result v2

    .line 804
    if-nez v1, :cond_6

    if-eqz v2, :cond_7

    .line 805
    :cond_6
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 807
    iget-wide v1, p0, Lcom/c/b/c/t;->q:D

    iget-wide v3, p1, Lcom/c/b/c/t;->q:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    .line 811
    :cond_7
    invoke-virtual {p0}, Lcom/c/b/c/t;->d()Z

    move-result v1

    .line 812
    invoke-virtual {p1}, Lcom/c/b/c/t;->d()Z

    move-result v2

    .line 813
    if-nez v1, :cond_8

    if-eqz v2, :cond_9

    .line 814
    :cond_8
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 816
    iget-wide v1, p0, Lcom/c/b/c/t;->r:D

    iget-wide v3, p1, Lcom/c/b/c/t;->r:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    .line 820
    :cond_9
    invoke-virtual {p0}, Lcom/c/b/c/t;->e()Z

    move-result v1

    .line 821
    invoke-virtual {p1}, Lcom/c/b/c/t;->e()Z

    move-result v2

    .line 822
    if-nez v1, :cond_a

    if-eqz v2, :cond_b

    .line 823
    :cond_a
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 825
    iget-wide v1, p0, Lcom/c/b/c/t;->s:D

    iget-wide v3, p1, Lcom/c/b/c/t;->s:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    .line 829
    :cond_b
    invoke-virtual {p0}, Lcom/c/b/c/t;->f()Z

    move-result v1

    .line 830
    invoke-virtual {p1}, Lcom/c/b/c/t;->f()Z

    move-result v2

    .line 831
    if-nez v1, :cond_c

    if-eqz v2, :cond_d

    .line 832
    :cond_c
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 834
    iget-object v1, p0, Lcom/c/b/c/t;->t:Ljava/lang/String;

    iget-object v2, p1, Lcom/c/b/c/t;->t:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 838
    :cond_d
    invoke-virtual {p0}, Lcom/c/b/c/t;->g()Z

    move-result v1

    .line 839
    invoke-virtual {p1}, Lcom/c/b/c/t;->g()Z

    move-result v2

    .line 840
    if-nez v1, :cond_e

    if-eqz v2, :cond_f

    .line 841
    :cond_e
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 843
    iget-object v1, p0, Lcom/c/b/c/t;->u:Ljava/lang/String;

    iget-object v2, p1, Lcom/c/b/c/t;->u:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 847
    :cond_f
    invoke-virtual {p0}, Lcom/c/b/c/t;->h()Z

    move-result v1

    .line 848
    invoke-virtual {p1}, Lcom/c/b/c/t;->h()Z

    move-result v2

    .line 849
    if-nez v1, :cond_10

    if-eqz v2, :cond_11

    .line 850
    :cond_10
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 852
    iget-boolean v1, p0, Lcom/c/b/c/t;->v:Z

    iget-boolean v2, p1, Lcom/c/b/c/t;->v:Z

    if-ne v1, v2, :cond_0

    .line 856
    :cond_11
    invoke-virtual {p0}, Lcom/c/b/c/t;->i()Z

    move-result v1

    .line 857
    invoke-virtual {p1}, Lcom/c/b/c/t;->i()Z

    move-result v2

    .line 858
    if-nez v1, :cond_12

    if-eqz v2, :cond_13

    .line 859
    :cond_12
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 861
    iget-object v1, p0, Lcom/c/b/c/t;->w:Ljava/lang/String;

    iget-object v2, p1, Lcom/c/b/c/t;->w:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 865
    :cond_13
    invoke-virtual {p0}, Lcom/c/b/c/t;->j()Z

    move-result v1

    .line 866
    invoke-virtual {p1}, Lcom/c/b/c/t;->j()Z

    move-result v2

    .line 867
    if-nez v1, :cond_14

    if-eqz v2, :cond_15

    .line 868
    :cond_14
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 870
    iget-object v1, p0, Lcom/c/b/c/t;->x:Ljava/lang/String;

    iget-object v2, p1, Lcom/c/b/c/t;->x:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 874
    :cond_15
    invoke-virtual {p0}, Lcom/c/b/c/t;->k()Z

    move-result v1

    .line 875
    invoke-virtual {p1}, Lcom/c/b/c/t;->k()Z

    move-result v2

    .line 876
    if-nez v1, :cond_16

    if-eqz v2, :cond_17

    .line 877
    :cond_16
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 879
    iget-boolean v1, p0, Lcom/c/b/c/t;->y:Z

    iget-boolean v2, p1, Lcom/c/b/c/t;->y:Z

    if-ne v1, v2, :cond_0

    .line 883
    :cond_17
    invoke-virtual {p0}, Lcom/c/b/c/t;->l()Z

    move-result v1

    .line 884
    invoke-virtual {p1}, Lcom/c/b/c/t;->l()Z

    move-result v2

    .line 885
    if-nez v1, :cond_18

    if-eqz v2, :cond_19

    .line 886
    :cond_18
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 888
    iget-object v1, p0, Lcom/c/b/c/t;->z:Lcom/c/b/c/e;

    iget-object v2, p1, Lcom/c/b/c/t;->z:Lcom/c/b/c/e;

    invoke-virtual {v1, v2}, Lcom/c/b/c/e;->a(Lcom/c/b/c/e;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 892
    :cond_19
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public b(Lcom/c/b/c/t;)I
    .locals 4

    .prologue
    .line 900
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 901
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 1015
    :cond_0
    :goto_0
    return v0

    .line 907
    :cond_1
    invoke-virtual {p0}, Lcom/c/b/c/t;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/c/t;->a()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 908
    if-nez v0, :cond_0

    .line 911
    invoke-virtual {p0}, Lcom/c/b/c/t;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/c/b/c/t;->o:Ljava/lang/String;

    iget-object v1, p1, Lcom/c/b/c/t;->o:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 912
    if-nez v0, :cond_0

    .line 916
    :cond_2
    invoke-virtual {p0}, Lcom/c/b/c/t;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/c/t;->b()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 917
    if-nez v0, :cond_0

    .line 920
    invoke-virtual {p0}, Lcom/c/b/c/t;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lcom/c/b/c/t;->p:J

    iget-wide v2, p1, Lcom/c/b/c/t;->p:J

    invoke-static {v0, v1, v2, v3}, Lorg/apache/c/c;->a(JJ)I

    move-result v0

    .line 921
    if-nez v0, :cond_0

    .line 925
    :cond_3
    invoke-virtual {p0}, Lcom/c/b/c/t;->c()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/c/t;->c()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 926
    if-nez v0, :cond_0

    .line 929
    invoke-virtual {p0}, Lcom/c/b/c/t;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-wide v0, p0, Lcom/c/b/c/t;->q:D

    iget-wide v2, p1, Lcom/c/b/c/t;->q:D

    invoke-static {v0, v1, v2, v3}, Lorg/apache/c/c;->a(DD)I

    move-result v0

    .line 930
    if-nez v0, :cond_0

    .line 934
    :cond_4
    invoke-virtual {p0}, Lcom/c/b/c/t;->d()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/c/t;->d()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 935
    if-nez v0, :cond_0

    .line 938
    invoke-virtual {p0}, Lcom/c/b/c/t;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-wide v0, p0, Lcom/c/b/c/t;->r:D

    iget-wide v2, p1, Lcom/c/b/c/t;->r:D

    invoke-static {v0, v1, v2, v3}, Lorg/apache/c/c;->a(DD)I

    move-result v0

    .line 939
    if-nez v0, :cond_0

    .line 943
    :cond_5
    invoke-virtual {p0}, Lcom/c/b/c/t;->e()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/c/t;->e()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 944
    if-nez v0, :cond_0

    .line 947
    invoke-virtual {p0}, Lcom/c/b/c/t;->e()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-wide v0, p0, Lcom/c/b/c/t;->s:D

    iget-wide v2, p1, Lcom/c/b/c/t;->s:D

    invoke-static {v0, v1, v2, v3}, Lorg/apache/c/c;->a(DD)I

    move-result v0

    .line 948
    if-nez v0, :cond_0

    .line 952
    :cond_6
    invoke-virtual {p0}, Lcom/c/b/c/t;->f()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/c/t;->f()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 953
    if-nez v0, :cond_0

    .line 956
    invoke-virtual {p0}, Lcom/c/b/c/t;->f()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/c/b/c/t;->t:Ljava/lang/String;

    iget-object v1, p1, Lcom/c/b/c/t;->t:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 957
    if-nez v0, :cond_0

    .line 961
    :cond_7
    invoke-virtual {p0}, Lcom/c/b/c/t;->g()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/c/t;->g()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 962
    if-nez v0, :cond_0

    .line 965
    invoke-virtual {p0}, Lcom/c/b/c/t;->g()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/c/b/c/t;->u:Ljava/lang/String;

    iget-object v1, p1, Lcom/c/b/c/t;->u:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 966
    if-nez v0, :cond_0

    .line 970
    :cond_8
    invoke-virtual {p0}, Lcom/c/b/c/t;->h()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/c/t;->h()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 971
    if-nez v0, :cond_0

    .line 974
    invoke-virtual {p0}, Lcom/c/b/c/t;->h()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/c/b/c/t;->v:Z

    iget-boolean v1, p1, Lcom/c/b/c/t;->v:Z

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(ZZ)I

    move-result v0

    .line 975
    if-nez v0, :cond_0

    .line 979
    :cond_9
    invoke-virtual {p0}, Lcom/c/b/c/t;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/c/t;->i()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 980
    if-nez v0, :cond_0

    .line 983
    invoke-virtual {p0}, Lcom/c/b/c/t;->i()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/c/b/c/t;->w:Ljava/lang/String;

    iget-object v1, p1, Lcom/c/b/c/t;->w:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 984
    if-nez v0, :cond_0

    .line 988
    :cond_a
    invoke-virtual {p0}, Lcom/c/b/c/t;->j()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/c/t;->j()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 989
    if-nez v0, :cond_0

    .line 992
    invoke-virtual {p0}, Lcom/c/b/c/t;->j()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/c/b/c/t;->x:Ljava/lang/String;

    iget-object v1, p1, Lcom/c/b/c/t;->x:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 993
    if-nez v0, :cond_0

    .line 997
    :cond_b
    invoke-virtual {p0}, Lcom/c/b/c/t;->k()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/c/t;->k()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 998
    if-nez v0, :cond_0

    .line 1001
    invoke-virtual {p0}, Lcom/c/b/c/t;->k()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/c/b/c/t;->y:Z

    iget-boolean v1, p1, Lcom/c/b/c/t;->y:Z

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(ZZ)I

    move-result v0

    .line 1002
    if-nez v0, :cond_0

    .line 1006
    :cond_c
    invoke-virtual {p0}, Lcom/c/b/c/t;->l()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/c/t;->l()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1007
    if-nez v0, :cond_0

    .line 1010
    invoke-virtual {p0}, Lcom/c/b/c/t;->l()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/c/b/c/t;->z:Lcom/c/b/c/e;

    iget-object v1, p1, Lcom/c/b/c/t;->z:Lcom/c/b/c/e;

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 1011
    if-nez v0, :cond_0

    .line 1015
    :cond_d
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public b(Lorg/apache/c/b/f;)V
    .locals 2

    .prologue
    .line 1133
    invoke-virtual {p0}, Lcom/c/b/c/t;->m()V

    .line 1135
    sget-object v0, Lcom/c/b/c/t;->b:Lorg/apache/c/b/j;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Lorg/apache/c/b/j;)V

    .line 1136
    iget-object v0, p0, Lcom/c/b/c/t;->o:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1137
    invoke-virtual {p0}, Lcom/c/b/c/t;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1138
    sget-object v0, Lcom/c/b/c/t;->c:Lorg/apache/c/b/b;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Lorg/apache/c/b/b;)V

    .line 1139
    iget-object v0, p0, Lcom/c/b/c/t;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Ljava/lang/String;)V

    .line 1140
    invoke-virtual {p1}, Lorg/apache/c/b/f;->d()V

    .line 1143
    :cond_0
    invoke-virtual {p0}, Lcom/c/b/c/t;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1144
    sget-object v0, Lcom/c/b/c/t;->d:Lorg/apache/c/b/b;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Lorg/apache/c/b/b;)V

    .line 1145
    iget-wide v0, p0, Lcom/c/b/c/t;->p:J

    invoke-virtual {p1, v0, v1}, Lorg/apache/c/b/f;->a(J)V

    .line 1146
    invoke-virtual {p1}, Lorg/apache/c/b/f;->d()V

    .line 1148
    :cond_1
    invoke-virtual {p0}, Lcom/c/b/c/t;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1149
    sget-object v0, Lcom/c/b/c/t;->e:Lorg/apache/c/b/b;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Lorg/apache/c/b/b;)V

    .line 1150
    iget-wide v0, p0, Lcom/c/b/c/t;->q:D

    invoke-virtual {p1, v0, v1}, Lorg/apache/c/b/f;->a(D)V

    .line 1151
    invoke-virtual {p1}, Lorg/apache/c/b/f;->d()V

    .line 1153
    :cond_2
    invoke-virtual {p0}, Lcom/c/b/c/t;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1154
    sget-object v0, Lcom/c/b/c/t;->f:Lorg/apache/c/b/b;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Lorg/apache/c/b/b;)V

    .line 1155
    iget-wide v0, p0, Lcom/c/b/c/t;->r:D

    invoke-virtual {p1, v0, v1}, Lorg/apache/c/b/f;->a(D)V

    .line 1156
    invoke-virtual {p1}, Lorg/apache/c/b/f;->d()V

    .line 1158
    :cond_3
    invoke-virtual {p0}, Lcom/c/b/c/t;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1159
    sget-object v0, Lcom/c/b/c/t;->g:Lorg/apache/c/b/b;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Lorg/apache/c/b/b;)V

    .line 1160
    iget-wide v0, p0, Lcom/c/b/c/t;->s:D

    invoke-virtual {p1, v0, v1}, Lorg/apache/c/b/f;->a(D)V

    .line 1161
    invoke-virtual {p1}, Lorg/apache/c/b/f;->d()V

    .line 1163
    :cond_4
    iget-object v0, p0, Lcom/c/b/c/t;->t:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 1164
    invoke-virtual {p0}, Lcom/c/b/c/t;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1165
    sget-object v0, Lcom/c/b/c/t;->h:Lorg/apache/c/b/b;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Lorg/apache/c/b/b;)V

    .line 1166
    iget-object v0, p0, Lcom/c/b/c/t;->t:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Ljava/lang/String;)V

    .line 1167
    invoke-virtual {p1}, Lorg/apache/c/b/f;->d()V

    .line 1170
    :cond_5
    iget-object v0, p0, Lcom/c/b/c/t;->u:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 1171
    invoke-virtual {p0}, Lcom/c/b/c/t;->g()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1172
    sget-object v0, Lcom/c/b/c/t;->i:Lorg/apache/c/b/b;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Lorg/apache/c/b/b;)V

    .line 1173
    iget-object v0, p0, Lcom/c/b/c/t;->u:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Ljava/lang/String;)V

    .line 1174
    invoke-virtual {p1}, Lorg/apache/c/b/f;->d()V

    .line 1177
    :cond_6
    invoke-virtual {p0}, Lcom/c/b/c/t;->h()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1178
    sget-object v0, Lcom/c/b/c/t;->j:Lorg/apache/c/b/b;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Lorg/apache/c/b/b;)V

    .line 1179
    iget-boolean v0, p0, Lcom/c/b/c/t;->v:Z

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Z)V

    .line 1180
    invoke-virtual {p1}, Lorg/apache/c/b/f;->d()V

    .line 1182
    :cond_7
    iget-object v0, p0, Lcom/c/b/c/t;->w:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 1183
    invoke-virtual {p0}, Lcom/c/b/c/t;->i()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1184
    sget-object v0, Lcom/c/b/c/t;->k:Lorg/apache/c/b/b;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Lorg/apache/c/b/b;)V

    .line 1185
    iget-object v0, p0, Lcom/c/b/c/t;->w:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Ljava/lang/String;)V

    .line 1186
    invoke-virtual {p1}, Lorg/apache/c/b/f;->d()V

    .line 1189
    :cond_8
    iget-object v0, p0, Lcom/c/b/c/t;->x:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 1190
    invoke-virtual {p0}, Lcom/c/b/c/t;->j()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1191
    sget-object v0, Lcom/c/b/c/t;->l:Lorg/apache/c/b/b;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Lorg/apache/c/b/b;)V

    .line 1192
    iget-object v0, p0, Lcom/c/b/c/t;->x:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Ljava/lang/String;)V

    .line 1193
    invoke-virtual {p1}, Lorg/apache/c/b/f;->d()V

    .line 1196
    :cond_9
    invoke-virtual {p0}, Lcom/c/b/c/t;->k()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1197
    sget-object v0, Lcom/c/b/c/t;->m:Lorg/apache/c/b/b;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Lorg/apache/c/b/b;)V

    .line 1198
    iget-boolean v0, p0, Lcom/c/b/c/t;->y:Z

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Z)V

    .line 1199
    invoke-virtual {p1}, Lorg/apache/c/b/f;->d()V

    .line 1201
    :cond_a
    iget-object v0, p0, Lcom/c/b/c/t;->z:Lcom/c/b/c/e;

    if-eqz v0, :cond_b

    .line 1202
    invoke-virtual {p0}, Lcom/c/b/c/t;->l()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1203
    sget-object v0, Lcom/c/b/c/t;->n:Lorg/apache/c/b/b;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Lorg/apache/c/b/b;)V

    .line 1204
    iget-object v0, p0, Lcom/c/b/c/t;->z:Lcom/c/b/c/e;

    invoke-virtual {v0, p1}, Lcom/c/b/c/e;->b(Lorg/apache/c/b/f;)V

    .line 1205
    invoke-virtual {p1}, Lorg/apache/c/b/f;->d()V

    .line 1208
    :cond_b
    invoke-virtual {p1}, Lorg/apache/c/b/f;->e()V

    .line 1209
    invoke-virtual {p1}, Lorg/apache/c/b/f;->c()V

    .line 1210
    return-void
.end method

.method public b(Z)V
    .locals 2

    .prologue
    .line 388
    iget-object v0, p0, Lcom/c/b/c/t;->A:[Z

    const/4 v1, 0x1

    aput-boolean p1, v0, v1

    .line 389
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 362
    iget-object v0, p0, Lcom/c/b/c/t;->A:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
.end method

.method public c(Z)V
    .locals 2

    .prologue
    .line 410
    iget-object v0, p0, Lcom/c/b/c/t;->A:[Z

    const/4 v1, 0x2

    aput-boolean p1, v0, v1

    .line 411
    return-void
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 384
    iget-object v0, p0, Lcom/c/b/c/t;->A:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 105
    check-cast p1, Lcom/c/b/c/t;

    invoke-virtual {p0, p1}, Lcom/c/b/c/t;->b(Lcom/c/b/c/t;)I

    move-result v0

    return v0
.end method

.method public d(Z)V
    .locals 2

    .prologue
    .line 432
    iget-object v0, p0, Lcom/c/b/c/t;->A:[Z

    const/4 v1, 0x3

    aput-boolean p1, v0, v1

    .line 433
    return-void
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 406
    iget-object v0, p0, Lcom/c/b/c/t;->A:[Z

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    return v0
.end method

.method public e(Z)V
    .locals 2

    .prologue
    .line 500
    iget-object v0, p0, Lcom/c/b/c/t;->A:[Z

    const/4 v1, 0x4

    aput-boolean p1, v0, v1

    .line 501
    return-void
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 428
    iget-object v0, p0, Lcom/c/b/c/t;->A:[Z

    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 773
    if-nez p1, :cond_1

    .line 777
    :cond_0
    :goto_0
    return v0

    .line 775
    :cond_1
    instance-of v1, p1, Lcom/c/b/c/t;

    if-eqz v1, :cond_0

    .line 776
    check-cast p1, Lcom/c/b/c/t;

    invoke-virtual {p0, p1}, Lcom/c/b/c/t;->a(Lcom/c/b/c/t;)Z

    move-result v0

    goto :goto_0
.end method

.method public f(Z)V
    .locals 2

    .prologue
    .line 568
    iget-object v0, p0, Lcom/c/b/c/t;->A:[Z

    const/4 v1, 0x5

    aput-boolean p1, v0, v1

    .line 569
    return-void
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/c/b/c/t;->t:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/c/b/c/t;->u:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Z
    .locals 2

    .prologue
    .line 496
    iget-object v0, p0, Lcom/c/b/c/t;->A:[Z

    const/4 v1, 0x4

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 896
    const/4 v0, 0x0

    return v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/c/b/c/t;->w:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lcom/c/b/c/t;->x:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()Z
    .locals 2

    .prologue
    .line 564
    iget-object v0, p0, Lcom/c/b/c/t;->A:[Z

    const/4 v1, 0x5

    aget-boolean v0, v0, v1

    return v0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/c/b/c/t;->z:Lcom/c/b/c/e;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()V
    .locals 0

    .prologue
    .line 1317
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1213
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "ResourceAttributes("

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1214
    const/4 v0, 0x1

    .line 1216
    invoke-virtual {p0}, Lcom/c/b/c/t;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1217
    const-string v0, "sourceURL:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1218
    iget-object v0, p0, Lcom/c/b/c/t;->o:Ljava/lang/String;

    if-nez v0, :cond_16

    .line 1219
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    move v0, v1

    .line 1225
    :cond_0
    invoke-virtual {p0}, Lcom/c/b/c/t;->b()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1226
    if-nez v0, :cond_1

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1227
    :cond_1
    const-string v0, "timestamp:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1228
    iget-wide v3, p0, Lcom/c/b/c/t;->p:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move v0, v1

    .line 1231
    :cond_2
    invoke-virtual {p0}, Lcom/c/b/c/t;->c()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1232
    if-nez v0, :cond_3

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1233
    :cond_3
    const-string v0, "latitude:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1234
    iget-wide v3, p0, Lcom/c/b/c/t;->q:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move v0, v1

    .line 1237
    :cond_4
    invoke-virtual {p0}, Lcom/c/b/c/t;->d()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1238
    if-nez v0, :cond_5

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1239
    :cond_5
    const-string v0, "longitude:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1240
    iget-wide v3, p0, Lcom/c/b/c/t;->r:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move v0, v1

    .line 1243
    :cond_6
    invoke-virtual {p0}, Lcom/c/b/c/t;->e()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1244
    if-nez v0, :cond_7

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1245
    :cond_7
    const-string v0, "altitude:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1246
    iget-wide v3, p0, Lcom/c/b/c/t;->s:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move v0, v1

    .line 1249
    :cond_8
    invoke-virtual {p0}, Lcom/c/b/c/t;->f()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1250
    if-nez v0, :cond_9

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1251
    :cond_9
    const-string v0, "cameraMake:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1252
    iget-object v0, p0, Lcom/c/b/c/t;->t:Ljava/lang/String;

    if-nez v0, :cond_17

    .line 1253
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    move v0, v1

    .line 1259
    :cond_a
    invoke-virtual {p0}, Lcom/c/b/c/t;->g()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1260
    if-nez v0, :cond_b

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1261
    :cond_b
    const-string v0, "cameraModel:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1262
    iget-object v0, p0, Lcom/c/b/c/t;->u:Ljava/lang/String;

    if-nez v0, :cond_18

    .line 1263
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    move v0, v1

    .line 1269
    :cond_c
    invoke-virtual {p0}, Lcom/c/b/c/t;->h()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1270
    if-nez v0, :cond_d

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1271
    :cond_d
    const-string v0, "clientWillIndex:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1272
    iget-boolean v0, p0, Lcom/c/b/c/t;->v:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move v0, v1

    .line 1275
    :cond_e
    invoke-virtual {p0}, Lcom/c/b/c/t;->i()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1276
    if-nez v0, :cond_f

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1277
    :cond_f
    const-string v0, "recoType:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1278
    iget-object v0, p0, Lcom/c/b/c/t;->w:Ljava/lang/String;

    if-nez v0, :cond_19

    .line 1279
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    move v0, v1

    .line 1285
    :cond_10
    invoke-virtual {p0}, Lcom/c/b/c/t;->j()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1286
    if-nez v0, :cond_11

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1287
    :cond_11
    const-string v0, "fileName:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1288
    iget-object v0, p0, Lcom/c/b/c/t;->x:Ljava/lang/String;

    if-nez v0, :cond_1a

    .line 1289
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    move v0, v1

    .line 1295
    :cond_12
    invoke-virtual {p0}, Lcom/c/b/c/t;->k()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 1296
    if-nez v0, :cond_13

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1297
    :cond_13
    const-string v0, "attachment:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1298
    iget-boolean v0, p0, Lcom/c/b/c/t;->y:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1301
    :goto_5
    invoke-virtual {p0}, Lcom/c/b/c/t;->l()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1302
    if-nez v1, :cond_14

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1303
    :cond_14
    const-string v0, "applicationData:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1304
    iget-object v0, p0, Lcom/c/b/c/t;->z:Lcom/c/b/c/e;

    if-nez v0, :cond_1b

    .line 1305
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1311
    :cond_15
    :goto_6
    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1312
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1221
    :cond_16
    iget-object v0, p0, Lcom/c/b/c/t;->o:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1255
    :cond_17
    iget-object v0, p0, Lcom/c/b/c/t;->t:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1265
    :cond_18
    iget-object v0, p0, Lcom/c/b/c/t;->u:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 1281
    :cond_19
    iget-object v0, p0, Lcom/c/b/c/t;->w:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1291
    :cond_1a
    iget-object v0, p0, Lcom/c/b/c/t;->x:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1307
    :cond_1b
    iget-object v0, p0, Lcom/c/b/c/t;->z:Lcom/c/b/c/e;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_1c
    move v1, v0

    goto :goto_5
.end method
