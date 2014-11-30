.class public Lcom/c/b/c/r;
.super Ljava/lang/Object;
.source "Resource.java"

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
        "Lcom/c/b/c/r;",
        "Lcom/c/b/c/s;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/c/b/c/s;",
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

.field private p:Ljava/lang/String;

.field private q:Lcom/c/b/c/c;

.field private r:Ljava/lang/String;

.field private s:S

.field private t:S

.field private u:S

.field private v:Z

.field private w:Lcom/c/b/c/c;

.field private x:Lcom/c/b/c/t;

.field private y:I

.field private z:Lcom/c/b/c/c;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/16 v10, 0x8

    const/16 v9, 0xb

    const/4 v8, 0x6

    const/16 v7, 0xc

    const/4 v6, 0x2

    .line 105
    new-instance v0, Lorg/apache/c/b/j;

    const-string v1, "Resource"

    invoke-direct {v0, v1}, Lorg/apache/c/b/j;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/c/b/c/r;->b:Lorg/apache/c/b/j;

    .line 107
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "guid"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v9, v2}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/c/r;->c:Lorg/apache/c/b/b;

    .line 108
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "noteGuid"

    invoke-direct {v0, v1, v9, v6}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/c/r;->d:Lorg/apache/c/b/b;

    .line 109
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "data"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/c/r;->e:Lorg/apache/c/b/b;

    .line 110
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "mime"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v9, v2}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/c/r;->f:Lorg/apache/c/b/b;

    .line 111
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "width"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v8, v2}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/c/r;->g:Lorg/apache/c/b/b;

    .line 112
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "height"

    invoke-direct {v0, v1, v8, v8}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/c/r;->h:Lorg/apache/c/b/b;

    .line 113
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "duration"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v8, v2}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/c/r;->i:Lorg/apache/c/b/b;

    .line 114
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "active"

    invoke-direct {v0, v1, v6, v10}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/c/r;->j:Lorg/apache/c/b/b;

    .line 115
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "recognition"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/c/r;->k:Lorg/apache/c/b/b;

    .line 116
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "attributes"

    invoke-direct {v0, v1, v7, v9}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/c/r;->l:Lorg/apache/c/b/b;

    .line 117
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "updateSequenceNum"

    invoke-direct {v0, v1, v10, v7}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/c/r;->m:Lorg/apache/c/b/b;

    .line 118
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "alternateData"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/c/r;->n:Lorg/apache/c/b/b;

    .line 234
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/c/b/c/s;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 235
    sget-object v1, Lcom/c/b/c/s;->a:Lcom/c/b/c/s;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "guid"

    new-instance v4, Lorg/apache/c/a/c;

    const-string v5, "Guid"

    invoke-direct {v4, v9, v5}, Lorg/apache/c/a/c;-><init>(BLjava/lang/String;)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object v1, Lcom/c/b/c/s;->b:Lcom/c/b/c/s;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "noteGuid"

    new-instance v4, Lorg/apache/c/a/c;

    const-string v5, "Guid"

    invoke-direct {v4, v9, v5}, Lorg/apache/c/a/c;-><init>(BLjava/lang/String;)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-object v1, Lcom/c/b/c/s;->c:Lcom/c/b/c/s;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "data"

    new-instance v4, Lorg/apache/c/a/g;

    const-class v5, Lcom/c/b/c/c;

    invoke-direct {v4, v7, v5}, Lorg/apache/c/a/g;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    sget-object v1, Lcom/c/b/c/s;->d:Lcom/c/b/c/s;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "mime"

    new-instance v4, Lorg/apache/c/a/c;

    invoke-direct {v4, v9}, Lorg/apache/c/a/c;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sget-object v1, Lcom/c/b/c/s;->e:Lcom/c/b/c/s;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "width"

    new-instance v4, Lorg/apache/c/a/c;

    invoke-direct {v4, v8}, Lorg/apache/c/a/c;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    sget-object v1, Lcom/c/b/c/s;->f:Lcom/c/b/c/s;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "height"

    new-instance v4, Lorg/apache/c/a/c;

    invoke-direct {v4, v8}, Lorg/apache/c/a/c;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    sget-object v1, Lcom/c/b/c/s;->g:Lcom/c/b/c/s;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "duration"

    new-instance v4, Lorg/apache/c/a/c;

    invoke-direct {v4, v8}, Lorg/apache/c/a/c;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    sget-object v1, Lcom/c/b/c/s;->h:Lcom/c/b/c/s;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "active"

    new-instance v4, Lorg/apache/c/a/c;

    invoke-direct {v4, v6}, Lorg/apache/c/a/c;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    sget-object v1, Lcom/c/b/c/s;->i:Lcom/c/b/c/s;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "recognition"

    new-instance v4, Lorg/apache/c/a/g;

    const-class v5, Lcom/c/b/c/c;

    invoke-direct {v4, v7, v5}, Lorg/apache/c/a/g;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sget-object v1, Lcom/c/b/c/s;->j:Lcom/c/b/c/s;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "attributes"

    new-instance v4, Lorg/apache/c/a/g;

    const-class v5, Lcom/c/b/c/t;

    invoke-direct {v4, v7, v5}, Lorg/apache/c/a/g;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-object v1, Lcom/c/b/c/s;->k:Lcom/c/b/c/s;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "updateSequenceNum"

    new-instance v4, Lorg/apache/c/a/c;

    invoke-direct {v4, v10}, Lorg/apache/c/a/c;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    sget-object v1, Lcom/c/b/c/s;->l:Lcom/c/b/c/s;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "alternateData"

    new-instance v4, Lorg/apache/c/a/g;

    const-class v5, Lcom/c/b/c/c;

    invoke-direct {v4, v7, v5}, Lorg/apache/c/a/g;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/c/b/c/r;->a:Ljava/util/Map;

    .line 260
    const-class v0, Lcom/c/b/c/r;

    sget-object v1, Lcom/c/b/c/r;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/c/a/b;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 261
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    const/4 v0, 0x5

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/c/b/c/r;->A:[Z

    .line 264
    return-void
.end method


# virtual methods
.method public a(Lorg/apache/c/b/f;)V
    .locals 7

    .prologue
    const/16 v6, 0xb

    const/4 v5, 0x6

    const/16 v4, 0xc

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

    .line 1130
    invoke-virtual {p1}, Lorg/apache/c/b/f;->k()V

    .line 1131
    invoke-virtual {p0}, Lcom/c/b/c/r;->m()V

    .line 1132
    return-void

    .line 1031
    :cond_0
    iget-short v1, v0, Lorg/apache/c/b/b;->c:S

    packed-switch v1, :pswitch_data_0

    .line 1126
    :pswitch_0
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    .line 1128
    :goto_1
    invoke-virtual {p1}, Lorg/apache/c/b/f;->m()V

    goto :goto_0

    .line 1033
    :pswitch_1
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    if-ne v1, v6, :cond_1

    .line 1034
    invoke-virtual {p1}, Lorg/apache/c/b/f;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/c/b/c/r;->o:Ljava/lang/String;

    goto :goto_1

    .line 1036
    :cond_1
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto :goto_1

    .line 1040
    :pswitch_2
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    if-ne v1, v6, :cond_2

    .line 1041
    invoke-virtual {p1}, Lorg/apache/c/b/f;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/c/b/c/r;->p:Ljava/lang/String;

    goto :goto_1

    .line 1043
    :cond_2
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto :goto_1

    .line 1047
    :pswitch_3
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    if-ne v1, v4, :cond_3

    .line 1048
    new-instance v0, Lcom/c/b/c/c;

    invoke-direct {v0}, Lcom/c/b/c/c;-><init>()V

    iput-object v0, p0, Lcom/c/b/c/r;->q:Lcom/c/b/c/c;

    .line 1049
    iget-object v0, p0, Lcom/c/b/c/r;->q:Lcom/c/b/c/c;

    invoke-virtual {v0, p1}, Lcom/c/b/c/c;->a(Lorg/apache/c/b/f;)V

    goto :goto_1

    .line 1051
    :cond_3
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto :goto_1

    .line 1055
    :pswitch_4
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    if-ne v1, v6, :cond_4

    .line 1056
    invoke-virtual {p1}, Lorg/apache/c/b/f;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/c/b/c/r;->r:Ljava/lang/String;

    goto :goto_1

    .line 1058
    :cond_4
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto :goto_1

    .line 1062
    :pswitch_5
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    if-ne v1, v5, :cond_5

    .line 1063
    invoke-virtual {p1}, Lorg/apache/c/b/f;->v()S

    move-result v0

    iput-short v0, p0, Lcom/c/b/c/r;->s:S

    .line 1064
    invoke-virtual {p0, v3}, Lcom/c/b/c/r;->a(Z)V

    goto :goto_1

    .line 1066
    :cond_5
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto :goto_1

    .line 1070
    :pswitch_6
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    if-ne v1, v5, :cond_6

    .line 1071
    invoke-virtual {p1}, Lorg/apache/c/b/f;->v()S

    move-result v0

    iput-short v0, p0, Lcom/c/b/c/r;->t:S

    .line 1072
    invoke-virtual {p0, v3}, Lcom/c/b/c/r;->b(Z)V

    goto :goto_1

    .line 1074
    :cond_6
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto :goto_1

    .line 1078
    :pswitch_7
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    if-ne v1, v5, :cond_7

    .line 1079
    invoke-virtual {p1}, Lorg/apache/c/b/f;->v()S

    move-result v0

    iput-short v0, p0, Lcom/c/b/c/r;->u:S

    .line 1080
    invoke-virtual {p0, v3}, Lcom/c/b/c/r;->c(Z)V

    goto/16 :goto_1

    .line 1082
    :cond_7
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto/16 :goto_1

    .line 1086
    :pswitch_8
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    const/4 v2, 0x2

    if-ne v1, v2, :cond_8

    .line 1087
    invoke-virtual {p1}, Lorg/apache/c/b/f;->t()Z

    move-result v0

    iput-boolean v0, p0, Lcom/c/b/c/r;->v:Z

    .line 1088
    invoke-virtual {p0, v3}, Lcom/c/b/c/r;->d(Z)V

    goto/16 :goto_1

    .line 1090
    :cond_8
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto/16 :goto_1

    .line 1094
    :pswitch_9
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    if-ne v1, v4, :cond_9

    .line 1095
    new-instance v0, Lcom/c/b/c/c;

    invoke-direct {v0}, Lcom/c/b/c/c;-><init>()V

    iput-object v0, p0, Lcom/c/b/c/r;->w:Lcom/c/b/c/c;

    .line 1096
    iget-object v0, p0, Lcom/c/b/c/r;->w:Lcom/c/b/c/c;

    invoke-virtual {v0, p1}, Lcom/c/b/c/c;->a(Lorg/apache/c/b/f;)V

    goto/16 :goto_1

    .line 1098
    :cond_9
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto/16 :goto_1

    .line 1102
    :pswitch_a
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    if-ne v1, v4, :cond_a

    .line 1103
    new-instance v0, Lcom/c/b/c/t;

    invoke-direct {v0}, Lcom/c/b/c/t;-><init>()V

    iput-object v0, p0, Lcom/c/b/c/r;->x:Lcom/c/b/c/t;

    .line 1104
    iget-object v0, p0, Lcom/c/b/c/r;->x:Lcom/c/b/c/t;

    invoke-virtual {v0, p1}, Lcom/c/b/c/t;->a(Lorg/apache/c/b/f;)V

    goto/16 :goto_1

    .line 1106
    :cond_a
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto/16 :goto_1

    .line 1110
    :pswitch_b
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    const/16 v2, 0x8

    if-ne v1, v2, :cond_b

    .line 1111
    invoke-virtual {p1}, Lorg/apache/c/b/f;->w()I

    move-result v0

    iput v0, p0, Lcom/c/b/c/r;->y:I

    .line 1112
    invoke-virtual {p0, v3}, Lcom/c/b/c/r;->e(Z)V

    goto/16 :goto_1

    .line 1114
    :cond_b
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto/16 :goto_1

    .line 1118
    :pswitch_c
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    if-ne v1, v4, :cond_c

    .line 1119
    new-instance v0, Lcom/c/b/c/c;

    invoke-direct {v0}, Lcom/c/b/c/c;-><init>()V

    iput-object v0, p0, Lcom/c/b/c/r;->z:Lcom/c/b/c/c;

    .line 1120
    iget-object v0, p0, Lcom/c/b/c/r;->z:Lcom/c/b/c/c;

    invoke-virtual {v0, p1}, Lcom/c/b/c/c;->a(Lorg/apache/c/b/f;)V

    goto/16 :goto_1

    .line 1122
    :cond_c
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto/16 :goto_1

    .line 1031
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 434
    iget-object v0, p0, Lcom/c/b/c/r;->A:[Z

    const/4 v1, 0x0

    aput-boolean p1, v0, v1

    .line 435
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/c/b/c/r;->o:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/c/b/c/r;)Z
    .locals 3

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
    invoke-virtual {p0}, Lcom/c/b/c/r;->a()Z

    move-result v1

    .line 785
    invoke-virtual {p1}, Lcom/c/b/c/r;->a()Z

    move-result v2

    .line 786
    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    .line 787
    :cond_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 789
    iget-object v1, p0, Lcom/c/b/c/r;->o:Ljava/lang/String;

    iget-object v2, p1, Lcom/c/b/c/r;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 793
    :cond_3
    invoke-virtual {p0}, Lcom/c/b/c/r;->b()Z

    move-result v1

    .line 794
    invoke-virtual {p1}, Lcom/c/b/c/r;->b()Z

    move-result v2

    .line 795
    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    .line 796
    :cond_4
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 798
    iget-object v1, p0, Lcom/c/b/c/r;->p:Ljava/lang/String;

    iget-object v2, p1, Lcom/c/b/c/r;->p:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 802
    :cond_5
    invoke-virtual {p0}, Lcom/c/b/c/r;->c()Z

    move-result v1

    .line 803
    invoke-virtual {p1}, Lcom/c/b/c/r;->c()Z

    move-result v2

    .line 804
    if-nez v1, :cond_6

    if-eqz v2, :cond_7

    .line 805
    :cond_6
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 807
    iget-object v1, p0, Lcom/c/b/c/r;->q:Lcom/c/b/c/c;

    iget-object v2, p1, Lcom/c/b/c/r;->q:Lcom/c/b/c/c;

    invoke-virtual {v1, v2}, Lcom/c/b/c/c;->a(Lcom/c/b/c/c;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 811
    :cond_7
    invoke-virtual {p0}, Lcom/c/b/c/r;->d()Z

    move-result v1

    .line 812
    invoke-virtual {p1}, Lcom/c/b/c/r;->d()Z

    move-result v2

    .line 813
    if-nez v1, :cond_8

    if-eqz v2, :cond_9

    .line 814
    :cond_8
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 816
    iget-object v1, p0, Lcom/c/b/c/r;->r:Ljava/lang/String;

    iget-object v2, p1, Lcom/c/b/c/r;->r:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 820
    :cond_9
    invoke-virtual {p0}, Lcom/c/b/c/r;->e()Z

    move-result v1

    .line 821
    invoke-virtual {p1}, Lcom/c/b/c/r;->e()Z

    move-result v2

    .line 822
    if-nez v1, :cond_a

    if-eqz v2, :cond_b

    .line 823
    :cond_a
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 825
    iget-short v1, p0, Lcom/c/b/c/r;->s:S

    iget-short v2, p1, Lcom/c/b/c/r;->s:S

    if-ne v1, v2, :cond_0

    .line 829
    :cond_b
    invoke-virtual {p0}, Lcom/c/b/c/r;->f()Z

    move-result v1

    .line 830
    invoke-virtual {p1}, Lcom/c/b/c/r;->f()Z

    move-result v2

    .line 831
    if-nez v1, :cond_c

    if-eqz v2, :cond_d

    .line 832
    :cond_c
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 834
    iget-short v1, p0, Lcom/c/b/c/r;->t:S

    iget-short v2, p1, Lcom/c/b/c/r;->t:S

    if-ne v1, v2, :cond_0

    .line 838
    :cond_d
    invoke-virtual {p0}, Lcom/c/b/c/r;->g()Z

    move-result v1

    .line 839
    invoke-virtual {p1}, Lcom/c/b/c/r;->g()Z

    move-result v2

    .line 840
    if-nez v1, :cond_e

    if-eqz v2, :cond_f

    .line 841
    :cond_e
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 843
    iget-short v1, p0, Lcom/c/b/c/r;->u:S

    iget-short v2, p1, Lcom/c/b/c/r;->u:S

    if-ne v1, v2, :cond_0

    .line 847
    :cond_f
    invoke-virtual {p0}, Lcom/c/b/c/r;->h()Z

    move-result v1

    .line 848
    invoke-virtual {p1}, Lcom/c/b/c/r;->h()Z

    move-result v2

    .line 849
    if-nez v1, :cond_10

    if-eqz v2, :cond_11

    .line 850
    :cond_10
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 852
    iget-boolean v1, p0, Lcom/c/b/c/r;->v:Z

    iget-boolean v2, p1, Lcom/c/b/c/r;->v:Z

    if-ne v1, v2, :cond_0

    .line 856
    :cond_11
    invoke-virtual {p0}, Lcom/c/b/c/r;->i()Z

    move-result v1

    .line 857
    invoke-virtual {p1}, Lcom/c/b/c/r;->i()Z

    move-result v2

    .line 858
    if-nez v1, :cond_12

    if-eqz v2, :cond_13

    .line 859
    :cond_12
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 861
    iget-object v1, p0, Lcom/c/b/c/r;->w:Lcom/c/b/c/c;

    iget-object v2, p1, Lcom/c/b/c/r;->w:Lcom/c/b/c/c;

    invoke-virtual {v1, v2}, Lcom/c/b/c/c;->a(Lcom/c/b/c/c;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 865
    :cond_13
    invoke-virtual {p0}, Lcom/c/b/c/r;->j()Z

    move-result v1

    .line 866
    invoke-virtual {p1}, Lcom/c/b/c/r;->j()Z

    move-result v2

    .line 867
    if-nez v1, :cond_14

    if-eqz v2, :cond_15

    .line 868
    :cond_14
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 870
    iget-object v1, p0, Lcom/c/b/c/r;->x:Lcom/c/b/c/t;

    iget-object v2, p1, Lcom/c/b/c/r;->x:Lcom/c/b/c/t;

    invoke-virtual {v1, v2}, Lcom/c/b/c/t;->a(Lcom/c/b/c/t;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 874
    :cond_15
    invoke-virtual {p0}, Lcom/c/b/c/r;->k()Z

    move-result v1

    .line 875
    invoke-virtual {p1}, Lcom/c/b/c/r;->k()Z

    move-result v2

    .line 876
    if-nez v1, :cond_16

    if-eqz v2, :cond_17

    .line 877
    :cond_16
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 879
    iget v1, p0, Lcom/c/b/c/r;->y:I

    iget v2, p1, Lcom/c/b/c/r;->y:I

    if-ne v1, v2, :cond_0

    .line 883
    :cond_17
    invoke-virtual {p0}, Lcom/c/b/c/r;->l()Z

    move-result v1

    .line 884
    invoke-virtual {p1}, Lcom/c/b/c/r;->l()Z

    move-result v2

    .line 885
    if-nez v1, :cond_18

    if-eqz v2, :cond_19

    .line 886
    :cond_18
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 888
    iget-object v1, p0, Lcom/c/b/c/r;->z:Lcom/c/b/c/c;

    iget-object v2, p1, Lcom/c/b/c/r;->z:Lcom/c/b/c/c;

    invoke-virtual {v1, v2}, Lcom/c/b/c/c;->a(Lcom/c/b/c/c;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 892
    :cond_19
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public b(Lcom/c/b/c/r;)I
    .locals 2

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
    invoke-virtual {p0}, Lcom/c/b/c/r;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/c/r;->a()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 908
    if-nez v0, :cond_0

    .line 911
    invoke-virtual {p0}, Lcom/c/b/c/r;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/c/b/c/r;->o:Ljava/lang/String;

    iget-object v1, p1, Lcom/c/b/c/r;->o:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 912
    if-nez v0, :cond_0

    .line 916
    :cond_2
    invoke-virtual {p0}, Lcom/c/b/c/r;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/c/r;->b()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 917
    if-nez v0, :cond_0

    .line 920
    invoke-virtual {p0}, Lcom/c/b/c/r;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/c/b/c/r;->p:Ljava/lang/String;

    iget-object v1, p1, Lcom/c/b/c/r;->p:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 921
    if-nez v0, :cond_0

    .line 925
    :cond_3
    invoke-virtual {p0}, Lcom/c/b/c/r;->c()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/c/r;->c()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 926
    if-nez v0, :cond_0

    .line 929
    invoke-virtual {p0}, Lcom/c/b/c/r;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/c/b/c/r;->q:Lcom/c/b/c/c;

    iget-object v1, p1, Lcom/c/b/c/r;->q:Lcom/c/b/c/c;

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 930
    if-nez v0, :cond_0

    .line 934
    :cond_4
    invoke-virtual {p0}, Lcom/c/b/c/r;->d()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/c/r;->d()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 935
    if-nez v0, :cond_0

    .line 938
    invoke-virtual {p0}, Lcom/c/b/c/r;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/c/b/c/r;->r:Ljava/lang/String;

    iget-object v1, p1, Lcom/c/b/c/r;->r:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 939
    if-nez v0, :cond_0

    .line 943
    :cond_5
    invoke-virtual {p0}, Lcom/c/b/c/r;->e()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/c/r;->e()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 944
    if-nez v0, :cond_0

    .line 947
    invoke-virtual {p0}, Lcom/c/b/c/r;->e()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-short v0, p0, Lcom/c/b/c/r;->s:S

    iget-short v1, p1, Lcom/c/b/c/r;->s:S

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(SS)I

    move-result v0

    .line 948
    if-nez v0, :cond_0

    .line 952
    :cond_6
    invoke-virtual {p0}, Lcom/c/b/c/r;->f()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/c/r;->f()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 953
    if-nez v0, :cond_0

    .line 956
    invoke-virtual {p0}, Lcom/c/b/c/r;->f()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-short v0, p0, Lcom/c/b/c/r;->t:S

    iget-short v1, p1, Lcom/c/b/c/r;->t:S

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(SS)I

    move-result v0

    .line 957
    if-nez v0, :cond_0

    .line 961
    :cond_7
    invoke-virtual {p0}, Lcom/c/b/c/r;->g()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/c/r;->g()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 962
    if-nez v0, :cond_0

    .line 965
    invoke-virtual {p0}, Lcom/c/b/c/r;->g()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-short v0, p0, Lcom/c/b/c/r;->u:S

    iget-short v1, p1, Lcom/c/b/c/r;->u:S

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(SS)I

    move-result v0

    .line 966
    if-nez v0, :cond_0

    .line 970
    :cond_8
    invoke-virtual {p0}, Lcom/c/b/c/r;->h()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/c/r;->h()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 971
    if-nez v0, :cond_0

    .line 974
    invoke-virtual {p0}, Lcom/c/b/c/r;->h()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/c/b/c/r;->v:Z

    iget-boolean v1, p1, Lcom/c/b/c/r;->v:Z

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(ZZ)I

    move-result v0

    .line 975
    if-nez v0, :cond_0

    .line 979
    :cond_9
    invoke-virtual {p0}, Lcom/c/b/c/r;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/c/r;->i()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 980
    if-nez v0, :cond_0

    .line 983
    invoke-virtual {p0}, Lcom/c/b/c/r;->i()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/c/b/c/r;->w:Lcom/c/b/c/c;

    iget-object v1, p1, Lcom/c/b/c/r;->w:Lcom/c/b/c/c;

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 984
    if-nez v0, :cond_0

    .line 988
    :cond_a
    invoke-virtual {p0}, Lcom/c/b/c/r;->j()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/c/r;->j()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 989
    if-nez v0, :cond_0

    .line 992
    invoke-virtual {p0}, Lcom/c/b/c/r;->j()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/c/b/c/r;->x:Lcom/c/b/c/t;

    iget-object v1, p1, Lcom/c/b/c/r;->x:Lcom/c/b/c/t;

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 993
    if-nez v0, :cond_0

    .line 997
    :cond_b
    invoke-virtual {p0}, Lcom/c/b/c/r;->k()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/c/r;->k()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 998
    if-nez v0, :cond_0

    .line 1001
    invoke-virtual {p0}, Lcom/c/b/c/r;->k()Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/c/b/c/r;->y:I

    iget v1, p1, Lcom/c/b/c/r;->y:I

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(II)I

    move-result v0

    .line 1002
    if-nez v0, :cond_0

    .line 1006
    :cond_c
    invoke-virtual {p0}, Lcom/c/b/c/r;->l()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/c/r;->l()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1007
    if-nez v0, :cond_0

    .line 1010
    invoke-virtual {p0}, Lcom/c/b/c/r;->l()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/c/b/c/r;->z:Lcom/c/b/c/c;

    iget-object v1, p1, Lcom/c/b/c/r;->z:Lcom/c/b/c/c;

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
    .locals 1

    .prologue
    .line 1135
    invoke-virtual {p0}, Lcom/c/b/c/r;->m()V

    .line 1137
    sget-object v0, Lcom/c/b/c/r;->b:Lorg/apache/c/b/j;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Lorg/apache/c/b/j;)V

    .line 1138
    iget-object v0, p0, Lcom/c/b/c/r;->o:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1139
    invoke-virtual {p0}, Lcom/c/b/c/r;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1140
    sget-object v0, Lcom/c/b/c/r;->c:Lorg/apache/c/b/b;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Lorg/apache/c/b/b;)V

    .line 1141
    iget-object v0, p0, Lcom/c/b/c/r;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Ljava/lang/String;)V

    .line 1142
    invoke-virtual {p1}, Lorg/apache/c/b/f;->d()V

    .line 1145
    :cond_0
    iget-object v0, p0, Lcom/c/b/c/r;->p:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1146
    invoke-virtual {p0}, Lcom/c/b/c/r;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1147
    sget-object v0, Lcom/c/b/c/r;->d:Lorg/apache/c/b/b;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Lorg/apache/c/b/b;)V

    .line 1148
    iget-object v0, p0, Lcom/c/b/c/r;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Ljava/lang/String;)V

    .line 1149
    invoke-virtual {p1}, Lorg/apache/c/b/f;->d()V

    .line 1152
    :cond_1
    iget-object v0, p0, Lcom/c/b/c/r;->q:Lcom/c/b/c/c;

    if-eqz v0, :cond_2

    .line 1153
    invoke-virtual {p0}, Lcom/c/b/c/r;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1154
    sget-object v0, Lcom/c/b/c/r;->e:Lorg/apache/c/b/b;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Lorg/apache/c/b/b;)V

    .line 1155
    iget-object v0, p0, Lcom/c/b/c/r;->q:Lcom/c/b/c/c;

    invoke-virtual {v0, p1}, Lcom/c/b/c/c;->b(Lorg/apache/c/b/f;)V

    .line 1156
    invoke-virtual {p1}, Lorg/apache/c/b/f;->d()V

    .line 1159
    :cond_2
    iget-object v0, p0, Lcom/c/b/c/r;->r:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1160
    invoke-virtual {p0}, Lcom/c/b/c/r;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1161
    sget-object v0, Lcom/c/b/c/r;->f:Lorg/apache/c/b/b;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Lorg/apache/c/b/b;)V

    .line 1162
    iget-object v0, p0, Lcom/c/b/c/r;->r:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Ljava/lang/String;)V

    .line 1163
    invoke-virtual {p1}, Lorg/apache/c/b/f;->d()V

    .line 1166
    :cond_3
    invoke-virtual {p0}, Lcom/c/b/c/r;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1167
    sget-object v0, Lcom/c/b/c/r;->g:Lorg/apache/c/b/b;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Lorg/apache/c/b/b;)V

    .line 1168
    iget-short v0, p0, Lcom/c/b/c/r;->s:S

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(S)V

    .line 1169
    invoke-virtual {p1}, Lorg/apache/c/b/f;->d()V

    .line 1171
    :cond_4
    invoke-virtual {p0}, Lcom/c/b/c/r;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1172
    sget-object v0, Lcom/c/b/c/r;->h:Lorg/apache/c/b/b;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Lorg/apache/c/b/b;)V

    .line 1173
    iget-short v0, p0, Lcom/c/b/c/r;->t:S

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(S)V

    .line 1174
    invoke-virtual {p1}, Lorg/apache/c/b/f;->d()V

    .line 1176
    :cond_5
    invoke-virtual {p0}, Lcom/c/b/c/r;->g()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1177
    sget-object v0, Lcom/c/b/c/r;->i:Lorg/apache/c/b/b;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Lorg/apache/c/b/b;)V

    .line 1178
    iget-short v0, p0, Lcom/c/b/c/r;->u:S

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(S)V

    .line 1179
    invoke-virtual {p1}, Lorg/apache/c/b/f;->d()V

    .line 1181
    :cond_6
    invoke-virtual {p0}, Lcom/c/b/c/r;->h()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1182
    sget-object v0, Lcom/c/b/c/r;->j:Lorg/apache/c/b/b;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Lorg/apache/c/b/b;)V

    .line 1183
    iget-boolean v0, p0, Lcom/c/b/c/r;->v:Z

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Z)V

    .line 1184
    invoke-virtual {p1}, Lorg/apache/c/b/f;->d()V

    .line 1186
    :cond_7
    iget-object v0, p0, Lcom/c/b/c/r;->w:Lcom/c/b/c/c;

    if-eqz v0, :cond_8

    .line 1187
    invoke-virtual {p0}, Lcom/c/b/c/r;->i()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1188
    sget-object v0, Lcom/c/b/c/r;->k:Lorg/apache/c/b/b;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Lorg/apache/c/b/b;)V

    .line 1189
    iget-object v0, p0, Lcom/c/b/c/r;->w:Lcom/c/b/c/c;

    invoke-virtual {v0, p1}, Lcom/c/b/c/c;->b(Lorg/apache/c/b/f;)V

    .line 1190
    invoke-virtual {p1}, Lorg/apache/c/b/f;->d()V

    .line 1193
    :cond_8
    iget-object v0, p0, Lcom/c/b/c/r;->x:Lcom/c/b/c/t;

    if-eqz v0, :cond_9

    .line 1194
    invoke-virtual {p0}, Lcom/c/b/c/r;->j()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1195
    sget-object v0, Lcom/c/b/c/r;->l:Lorg/apache/c/b/b;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Lorg/apache/c/b/b;)V

    .line 1196
    iget-object v0, p0, Lcom/c/b/c/r;->x:Lcom/c/b/c/t;

    invoke-virtual {v0, p1}, Lcom/c/b/c/t;->b(Lorg/apache/c/b/f;)V

    .line 1197
    invoke-virtual {p1}, Lorg/apache/c/b/f;->d()V

    .line 1200
    :cond_9
    invoke-virtual {p0}, Lcom/c/b/c/r;->k()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1201
    sget-object v0, Lcom/c/b/c/r;->m:Lorg/apache/c/b/b;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Lorg/apache/c/b/b;)V

    .line 1202
    iget v0, p0, Lcom/c/b/c/r;->y:I

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(I)V

    .line 1203
    invoke-virtual {p1}, Lorg/apache/c/b/f;->d()V

    .line 1205
    :cond_a
    iget-object v0, p0, Lcom/c/b/c/r;->z:Lcom/c/b/c/c;

    if-eqz v0, :cond_b

    .line 1206
    invoke-virtual {p0}, Lcom/c/b/c/r;->l()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1207
    sget-object v0, Lcom/c/b/c/r;->n:Lorg/apache/c/b/b;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Lorg/apache/c/b/b;)V

    .line 1208
    iget-object v0, p0, Lcom/c/b/c/r;->z:Lcom/c/b/c/c;

    invoke-virtual {v0, p1}, Lcom/c/b/c/c;->b(Lorg/apache/c/b/f;)V

    .line 1209
    invoke-virtual {p1}, Lorg/apache/c/b/f;->d()V

    .line 1212
    :cond_b
    invoke-virtual {p1}, Lorg/apache/c/b/f;->e()V

    .line 1213
    invoke-virtual {p1}, Lorg/apache/c/b/f;->c()V

    .line 1214
    return-void
.end method

.method public b(Z)V
    .locals 2

    .prologue
    .line 456
    iget-object v0, p0, Lcom/c/b/c/r;->A:[Z

    const/4 v1, 0x1

    aput-boolean p1, v0, v1

    .line 457
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/c/b/c/r;->p:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Z)V
    .locals 2

    .prologue
    .line 478
    iget-object v0, p0, Lcom/c/b/c/r;->A:[Z

    const/4 v1, 0x2

    aput-boolean p1, v0, v1

    .line 479
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/c/b/c/r;->q:Lcom/c/b/c/c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 104
    check-cast p1, Lcom/c/b/c/r;

    invoke-virtual {p0, p1}, Lcom/c/b/c/r;->b(Lcom/c/b/c/r;)I

    move-result v0

    return v0
.end method

.method public d(Z)V
    .locals 2

    .prologue
    .line 500
    iget-object v0, p0, Lcom/c/b/c/r;->A:[Z

    const/4 v1, 0x3

    aput-boolean p1, v0, v1

    .line 501
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/c/b/c/r;->r:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e(Z)V
    .locals 2

    .prologue
    .line 568
    iget-object v0, p0, Lcom/c/b/c/r;->A:[Z

    const/4 v1, 0x4

    aput-boolean p1, v0, v1

    .line 569
    return-void
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 430
    iget-object v0, p0, Lcom/c/b/c/r;->A:[Z

    const/4 v1, 0x0

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
    instance-of v1, p1, Lcom/c/b/c/r;

    if-eqz v1, :cond_0

    .line 776
    check-cast p1, Lcom/c/b/c/r;

    invoke-virtual {p0, p1}, Lcom/c/b/c/r;->a(Lcom/c/b/c/r;)Z

    move-result v0

    goto :goto_0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 452
    iget-object v0, p0, Lcom/c/b/c/r;->A:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    return v0
.end method

.method public g()Z
    .locals 2

    .prologue
    .line 474
    iget-object v0, p0, Lcom/c/b/c/r;->A:[Z

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    return v0
.end method

.method public h()Z
    .locals 2

    .prologue
    .line 496
    iget-object v0, p0, Lcom/c/b/c/r;->A:[Z

    const/4 v1, 0x3

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
    iget-object v0, p0, Lcom/c/b/c/r;->w:Lcom/c/b/c/c;

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
    iget-object v0, p0, Lcom/c/b/c/r;->x:Lcom/c/b/c/t;

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
    iget-object v0, p0, Lcom/c/b/c/r;->A:[Z

    const/4 v1, 0x4

    aget-boolean v0, v0, v1

    return v0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/c/b/c/r;->z:Lcom/c/b/c/c;

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
    .line 1325
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1217
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "Resource("

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1218
    const/4 v0, 0x1

    .line 1220
    invoke-virtual {p0}, Lcom/c/b/c/r;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1221
    const-string v0, "guid:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1222
    iget-object v0, p0, Lcom/c/b/c/r;->o:Ljava/lang/String;

    if-nez v0, :cond_16

    .line 1223
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    move v0, v1

    .line 1229
    :cond_0
    invoke-virtual {p0}, Lcom/c/b/c/r;->b()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1230
    if-nez v0, :cond_1

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1231
    :cond_1
    const-string v0, "noteGuid:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1232
    iget-object v0, p0, Lcom/c/b/c/r;->p:Ljava/lang/String;

    if-nez v0, :cond_17

    .line 1233
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    move v0, v1

    .line 1239
    :cond_2
    invoke-virtual {p0}, Lcom/c/b/c/r;->c()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1240
    if-nez v0, :cond_3

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1241
    :cond_3
    const-string v0, "data:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1242
    iget-object v0, p0, Lcom/c/b/c/r;->q:Lcom/c/b/c/c;

    if-nez v0, :cond_18

    .line 1243
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    move v0, v1

    .line 1249
    :cond_4
    invoke-virtual {p0}, Lcom/c/b/c/r;->d()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1250
    if-nez v0, :cond_5

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1251
    :cond_5
    const-string v0, "mime:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1252
    iget-object v0, p0, Lcom/c/b/c/r;->r:Ljava/lang/String;

    if-nez v0, :cond_19

    .line 1253
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    move v0, v1

    .line 1259
    :cond_6
    invoke-virtual {p0}, Lcom/c/b/c/r;->e()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1260
    if-nez v0, :cond_7

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1261
    :cond_7
    const-string v0, "width:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1262
    iget-short v0, p0, Lcom/c/b/c/r;->s:S

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v0, v1

    .line 1265
    :cond_8
    invoke-virtual {p0}, Lcom/c/b/c/r;->f()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1266
    if-nez v0, :cond_9

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1267
    :cond_9
    const-string v0, "height:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1268
    iget-short v0, p0, Lcom/c/b/c/r;->t:S

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v0, v1

    .line 1271
    :cond_a
    invoke-virtual {p0}, Lcom/c/b/c/r;->g()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1272
    if-nez v0, :cond_b

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1273
    :cond_b
    const-string v0, "duration:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1274
    iget-short v0, p0, Lcom/c/b/c/r;->u:S

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v0, v1

    .line 1277
    :cond_c
    invoke-virtual {p0}, Lcom/c/b/c/r;->h()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1278
    if-nez v0, :cond_d

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1279
    :cond_d
    const-string v0, "active:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1280
    iget-boolean v0, p0, Lcom/c/b/c/r;->v:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move v0, v1

    .line 1283
    :cond_e
    invoke-virtual {p0}, Lcom/c/b/c/r;->i()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1284
    if-nez v0, :cond_f

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1285
    :cond_f
    const-string v0, "recognition:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1286
    iget-object v0, p0, Lcom/c/b/c/r;->w:Lcom/c/b/c/c;

    if-nez v0, :cond_1a

    .line 1287
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    move v0, v1

    .line 1293
    :cond_10
    invoke-virtual {p0}, Lcom/c/b/c/r;->j()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1294
    if-nez v0, :cond_11

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1295
    :cond_11
    const-string v0, "attributes:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1296
    iget-object v0, p0, Lcom/c/b/c/r;->x:Lcom/c/b/c/t;

    if-nez v0, :cond_1b

    .line 1297
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    move v0, v1

    .line 1303
    :cond_12
    invoke-virtual {p0}, Lcom/c/b/c/r;->k()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 1304
    if-nez v0, :cond_13

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1305
    :cond_13
    const-string v0, "updateSequenceNum:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1306
    iget v0, p0, Lcom/c/b/c/r;->y:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1309
    :goto_6
    invoke-virtual {p0}, Lcom/c/b/c/r;->l()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1310
    if-nez v1, :cond_14

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1311
    :cond_14
    const-string v0, "alternateData:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1312
    iget-object v0, p0, Lcom/c/b/c/r;->z:Lcom/c/b/c/c;

    if-nez v0, :cond_1c

    .line 1313
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1319
    :cond_15
    :goto_7
    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1320
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1225
    :cond_16
    iget-object v0, p0, Lcom/c/b/c/r;->o:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1235
    :cond_17
    iget-object v0, p0, Lcom/c/b/c/r;->p:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1245
    :cond_18
    iget-object v0, p0, Lcom/c/b/c/r;->q:Lcom/c/b/c/c;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 1255
    :cond_19
    iget-object v0, p0, Lcom/c/b/c/r;->r:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 1289
    :cond_1a
    iget-object v0, p0, Lcom/c/b/c/r;->w:Lcom/c/b/c/c;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1299
    :cond_1b
    iget-object v0, p0, Lcom/c/b/c/r;->x:Lcom/c/b/c/t;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 1315
    :cond_1c
    iget-object v0, p0, Lcom/c/b/c/r;->z:Lcom/c/b/c/c;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_1d
    move v1, v0

    goto :goto_6
.end method
