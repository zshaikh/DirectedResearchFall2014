.class public Lcom/c/b/c/i;
.super Ljava/lang/Object;
.source "NoteAttributes.java"

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
        "Lcom/c/b/c/i;",
        "Lcom/c/b/c/j;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/c/b/c/j;",
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

.field private static final o:Lorg/apache/c/b/b;


# instance fields
.field private A:Lcom/c/b/c/e;

.field private B:Ljava/lang/String;

.field private C:[Z

.field private p:J

.field private q:D

.field private r:D

.field private s:D

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:J

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/16 v10, 0xc

    const/16 v9, 0xa

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/16 v6, 0xb

    .line 142
    new-instance v0, Lorg/apache/c/b/j;

    const-string v1, "NoteAttributes"

    invoke-direct {v0, v1}, Lorg/apache/c/b/j;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/c/b/c/i;->b:Lorg/apache/c/b/j;

    .line 144
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "subjectDate"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v9, v2}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/c/i;->c:Lorg/apache/c/b/b;

    .line 145
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "latitude"

    invoke-direct {v0, v1, v8, v9}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/c/i;->d:Lorg/apache/c/b/b;

    .line 146
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "longitude"

    invoke-direct {v0, v1, v8, v6}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/c/i;->e:Lorg/apache/c/b/b;

    .line 147
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "altitude"

    invoke-direct {v0, v1, v8, v10}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/c/i;->f:Lorg/apache/c/b/b;

    .line 148
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "author"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/c/i;->g:Lorg/apache/c/b/b;

    .line 149
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "source"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/c/i;->h:Lorg/apache/c/b/b;

    .line 150
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "sourceURL"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/c/i;->i:Lorg/apache/c/b/b;

    .line 151
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "sourceApplication"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/c/i;->j:Lorg/apache/c/b/b;

    .line 152
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "shareDate"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v9, v2}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/c/i;->k:Lorg/apache/c/b/b;

    .line 153
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "placeName"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/c/i;->l:Lorg/apache/c/b/b;

    .line 154
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "contentClass"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/c/i;->m:Lorg/apache/c/b/b;

    .line 155
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "applicationData"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v10, v2}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/c/i;->n:Lorg/apache/c/b/b;

    .line 156
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "lastEditedBy"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/c/i;->o:Lorg/apache/c/b/b;

    .line 276
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/c/b/c/j;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 277
    sget-object v1, Lcom/c/b/c/j;->a:Lcom/c/b/c/j;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "subjectDate"

    new-instance v4, Lorg/apache/c/a/c;

    const-string v5, "Timestamp"

    invoke-direct {v4, v9, v5}, Lorg/apache/c/a/c;-><init>(BLjava/lang/String;)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    sget-object v1, Lcom/c/b/c/j;->b:Lcom/c/b/c/j;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "latitude"

    new-instance v4, Lorg/apache/c/a/c;

    invoke-direct {v4, v8}, Lorg/apache/c/a/c;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    sget-object v1, Lcom/c/b/c/j;->c:Lcom/c/b/c/j;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "longitude"

    new-instance v4, Lorg/apache/c/a/c;

    invoke-direct {v4, v8}, Lorg/apache/c/a/c;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    sget-object v1, Lcom/c/b/c/j;->d:Lcom/c/b/c/j;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "altitude"

    new-instance v4, Lorg/apache/c/a/c;

    invoke-direct {v4, v8}, Lorg/apache/c/a/c;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    sget-object v1, Lcom/c/b/c/j;->e:Lcom/c/b/c/j;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "author"

    new-instance v4, Lorg/apache/c/a/c;

    invoke-direct {v4, v6}, Lorg/apache/c/a/c;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    sget-object v1, Lcom/c/b/c/j;->f:Lcom/c/b/c/j;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "source"

    new-instance v4, Lorg/apache/c/a/c;

    invoke-direct {v4, v6}, Lorg/apache/c/a/c;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    sget-object v1, Lcom/c/b/c/j;->g:Lcom/c/b/c/j;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "sourceURL"

    new-instance v4, Lorg/apache/c/a/c;

    invoke-direct {v4, v6}, Lorg/apache/c/a/c;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    sget-object v1, Lcom/c/b/c/j;->h:Lcom/c/b/c/j;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "sourceApplication"

    new-instance v4, Lorg/apache/c/a/c;

    invoke-direct {v4, v6}, Lorg/apache/c/a/c;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    sget-object v1, Lcom/c/b/c/j;->i:Lcom/c/b/c/j;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "shareDate"

    new-instance v4, Lorg/apache/c/a/c;

    const-string v5, "Timestamp"

    invoke-direct {v4, v9, v5}, Lorg/apache/c/a/c;-><init>(BLjava/lang/String;)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    sget-object v1, Lcom/c/b/c/j;->j:Lcom/c/b/c/j;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "placeName"

    new-instance v4, Lorg/apache/c/a/c;

    invoke-direct {v4, v6}, Lorg/apache/c/a/c;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    sget-object v1, Lcom/c/b/c/j;->k:Lcom/c/b/c/j;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "contentClass"

    new-instance v4, Lorg/apache/c/a/c;

    invoke-direct {v4, v6}, Lorg/apache/c/a/c;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    sget-object v1, Lcom/c/b/c/j;->l:Lcom/c/b/c/j;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "applicationData"

    new-instance v4, Lorg/apache/c/a/g;

    const-class v5, Lcom/c/b/c/e;

    invoke-direct {v4, v10, v5}, Lorg/apache/c/a/g;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    sget-object v1, Lcom/c/b/c/j;->m:Lcom/c/b/c/j;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "lastEditedBy"

    new-instance v4, Lorg/apache/c/a/c;

    invoke-direct {v4, v6}, Lorg/apache/c/a/c;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/c/b/c/i;->a:Ljava/util/Map;

    .line 304
    const-class v0, Lcom/c/b/c/i;

    sget-object v1, Lcom/c/b/c/i;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/c/a/b;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 305
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    const/4 v0, 0x5

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/c/b/c/i;->C:[Z

    .line 308
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 510
    iput-object p1, p0, Lcom/c/b/c/i;->v:Ljava/lang/String;

    .line 511
    return-void
.end method

.method public a(Lorg/apache/c/b/f;)V
    .locals 7

    .prologue
    const/16 v6, 0xa

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/16 v3, 0xb

    .line 1126
    invoke-virtual {p1}, Lorg/apache/c/b/f;->j()Lorg/apache/c/b/j;

    .line 1129
    :goto_0
    invoke-virtual {p1}, Lorg/apache/c/b/f;->l()Lorg/apache/c/b/b;

    move-result-object v0

    .line 1130
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    if-nez v1, :cond_0

    .line 1236
    invoke-virtual {p1}, Lorg/apache/c/b/f;->k()V

    .line 1237
    invoke-virtual {p0}, Lcom/c/b/c/i;->n()V

    .line 1238
    return-void

    .line 1133
    :cond_0
    iget-short v1, v0, Lorg/apache/c/b/b;->c:S

    packed-switch v1, :pswitch_data_0

    .line 1232
    :pswitch_0
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    .line 1234
    :goto_1
    invoke-virtual {p1}, Lorg/apache/c/b/f;->m()V

    goto :goto_0

    .line 1135
    :pswitch_1
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    if-ne v1, v6, :cond_1

    .line 1136
    invoke-virtual {p1}, Lorg/apache/c/b/f;->x()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/c/b/c/i;->p:J

    .line 1137
    invoke-virtual {p0, v4}, Lcom/c/b/c/i;->a(Z)V

    goto :goto_1

    .line 1139
    :cond_1
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto :goto_1

    .line 1143
    :pswitch_2
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    if-ne v1, v5, :cond_2

    .line 1144
    invoke-virtual {p1}, Lorg/apache/c/b/f;->y()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/c/b/c/i;->q:D

    .line 1145
    invoke-virtual {p0, v4}, Lcom/c/b/c/i;->b(Z)V

    goto :goto_1

    .line 1147
    :cond_2
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto :goto_1

    .line 1151
    :pswitch_3
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    if-ne v1, v5, :cond_3

    .line 1152
    invoke-virtual {p1}, Lorg/apache/c/b/f;->y()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/c/b/c/i;->r:D

    .line 1153
    invoke-virtual {p0, v4}, Lcom/c/b/c/i;->c(Z)V

    goto :goto_1

    .line 1155
    :cond_3
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto :goto_1

    .line 1159
    :pswitch_4
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    if-ne v1, v5, :cond_4

    .line 1160
    invoke-virtual {p1}, Lorg/apache/c/b/f;->y()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/c/b/c/i;->s:D

    .line 1161
    invoke-virtual {p0, v4}, Lcom/c/b/c/i;->d(Z)V

    goto :goto_1

    .line 1163
    :cond_4
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto :goto_1

    .line 1167
    :pswitch_5
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    if-ne v1, v3, :cond_5

    .line 1168
    invoke-virtual {p1}, Lorg/apache/c/b/f;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/c/b/c/i;->t:Ljava/lang/String;

    goto :goto_1

    .line 1170
    :cond_5
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto :goto_1

    .line 1174
    :pswitch_6
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    if-ne v1, v3, :cond_6

    .line 1175
    invoke-virtual {p1}, Lorg/apache/c/b/f;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/c/b/c/i;->u:Ljava/lang/String;

    goto :goto_1

    .line 1177
    :cond_6
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto :goto_1

    .line 1181
    :pswitch_7
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    if-ne v1, v3, :cond_7

    .line 1182
    invoke-virtual {p1}, Lorg/apache/c/b/f;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/c/b/c/i;->v:Ljava/lang/String;

    goto :goto_1

    .line 1184
    :cond_7
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto/16 :goto_1

    .line 1188
    :pswitch_8
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    if-ne v1, v3, :cond_8

    .line 1189
    invoke-virtual {p1}, Lorg/apache/c/b/f;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/c/b/c/i;->w:Ljava/lang/String;

    goto/16 :goto_1

    .line 1191
    :cond_8
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto/16 :goto_1

    .line 1195
    :pswitch_9
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    if-ne v1, v6, :cond_9

    .line 1196
    invoke-virtual {p1}, Lorg/apache/c/b/f;->x()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/c/b/c/i;->x:J

    .line 1197
    invoke-virtual {p0, v4}, Lcom/c/b/c/i;->e(Z)V

    goto/16 :goto_1

    .line 1199
    :cond_9
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto/16 :goto_1

    .line 1203
    :pswitch_a
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    if-ne v1, v3, :cond_a

    .line 1204
    invoke-virtual {p1}, Lorg/apache/c/b/f;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/c/b/c/i;->y:Ljava/lang/String;

    goto/16 :goto_1

    .line 1206
    :cond_a
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto/16 :goto_1

    .line 1210
    :pswitch_b
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    if-ne v1, v3, :cond_b

    .line 1211
    invoke-virtual {p1}, Lorg/apache/c/b/f;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/c/b/c/i;->z:Ljava/lang/String;

    goto/16 :goto_1

    .line 1213
    :cond_b
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto/16 :goto_1

    .line 1217
    :pswitch_c
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    const/16 v2, 0xc

    if-ne v1, v2, :cond_c

    .line 1218
    new-instance v0, Lcom/c/b/c/e;

    invoke-direct {v0}, Lcom/c/b/c/e;-><init>()V

    iput-object v0, p0, Lcom/c/b/c/i;->A:Lcom/c/b/c/e;

    .line 1219
    iget-object v0, p0, Lcom/c/b/c/i;->A:Lcom/c/b/c/e;

    invoke-virtual {v0, p1}, Lcom/c/b/c/e;->a(Lorg/apache/c/b/f;)V

    goto/16 :goto_1

    .line 1221
    :cond_c
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto/16 :goto_1

    .line 1225
    :pswitch_d
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    if-ne v1, v3, :cond_d

    .line 1226
    invoke-virtual {p1}, Lorg/apache/c/b/f;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/c/b/c/i;->B:Ljava/lang/String;

    goto/16 :goto_1

    .line 1228
    :cond_d
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto/16 :goto_1

    .line 1133
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 390
    iget-object v0, p0, Lcom/c/b/c/i;->C:[Z

    const/4 v1, 0x0

    aput-boolean p1, v0, v1

    .line 391
    return-void
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 386
    iget-object v0, p0, Lcom/c/b/c/i;->C:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
.end method

.method public a(Lcom/c/b/c/i;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 865
    if-nez p1, :cond_1

    .line 985
    :cond_0
    :goto_0
    return v0

    .line 868
    :cond_1
    invoke-virtual {p0}, Lcom/c/b/c/i;->a()Z

    move-result v1

    .line 869
    invoke-virtual {p1}, Lcom/c/b/c/i;->a()Z

    move-result v2

    .line 870
    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    .line 871
    :cond_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 873
    iget-wide v1, p0, Lcom/c/b/c/i;->p:J

    iget-wide v3, p1, Lcom/c/b/c/i;->p:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 877
    :cond_3
    invoke-virtual {p0}, Lcom/c/b/c/i;->b()Z

    move-result v1

    .line 878
    invoke-virtual {p1}, Lcom/c/b/c/i;->b()Z

    move-result v2

    .line 879
    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    .line 880
    :cond_4
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 882
    iget-wide v1, p0, Lcom/c/b/c/i;->q:D

    iget-wide v3, p1, Lcom/c/b/c/i;->q:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    .line 886
    :cond_5
    invoke-virtual {p0}, Lcom/c/b/c/i;->c()Z

    move-result v1

    .line 887
    invoke-virtual {p1}, Lcom/c/b/c/i;->c()Z

    move-result v2

    .line 888
    if-nez v1, :cond_6

    if-eqz v2, :cond_7

    .line 889
    :cond_6
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 891
    iget-wide v1, p0, Lcom/c/b/c/i;->r:D

    iget-wide v3, p1, Lcom/c/b/c/i;->r:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    .line 895
    :cond_7
    invoke-virtual {p0}, Lcom/c/b/c/i;->d()Z

    move-result v1

    .line 896
    invoke-virtual {p1}, Lcom/c/b/c/i;->d()Z

    move-result v2

    .line 897
    if-nez v1, :cond_8

    if-eqz v2, :cond_9

    .line 898
    :cond_8
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 900
    iget-wide v1, p0, Lcom/c/b/c/i;->s:D

    iget-wide v3, p1, Lcom/c/b/c/i;->s:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    .line 904
    :cond_9
    invoke-virtual {p0}, Lcom/c/b/c/i;->e()Z

    move-result v1

    .line 905
    invoke-virtual {p1}, Lcom/c/b/c/i;->e()Z

    move-result v2

    .line 906
    if-nez v1, :cond_a

    if-eqz v2, :cond_b

    .line 907
    :cond_a
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 909
    iget-object v1, p0, Lcom/c/b/c/i;->t:Ljava/lang/String;

    iget-object v2, p1, Lcom/c/b/c/i;->t:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 913
    :cond_b
    invoke-virtual {p0}, Lcom/c/b/c/i;->f()Z

    move-result v1

    .line 914
    invoke-virtual {p1}, Lcom/c/b/c/i;->f()Z

    move-result v2

    .line 915
    if-nez v1, :cond_c

    if-eqz v2, :cond_d

    .line 916
    :cond_c
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 918
    iget-object v1, p0, Lcom/c/b/c/i;->u:Ljava/lang/String;

    iget-object v2, p1, Lcom/c/b/c/i;->u:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 922
    :cond_d
    invoke-virtual {p0}, Lcom/c/b/c/i;->g()Z

    move-result v1

    .line 923
    invoke-virtual {p1}, Lcom/c/b/c/i;->g()Z

    move-result v2

    .line 924
    if-nez v1, :cond_e

    if-eqz v2, :cond_f

    .line 925
    :cond_e
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 927
    iget-object v1, p0, Lcom/c/b/c/i;->v:Ljava/lang/String;

    iget-object v2, p1, Lcom/c/b/c/i;->v:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 931
    :cond_f
    invoke-virtual {p0}, Lcom/c/b/c/i;->h()Z

    move-result v1

    .line 932
    invoke-virtual {p1}, Lcom/c/b/c/i;->h()Z

    move-result v2

    .line 933
    if-nez v1, :cond_10

    if-eqz v2, :cond_11

    .line 934
    :cond_10
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 936
    iget-object v1, p0, Lcom/c/b/c/i;->w:Ljava/lang/String;

    iget-object v2, p1, Lcom/c/b/c/i;->w:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 940
    :cond_11
    invoke-virtual {p0}, Lcom/c/b/c/i;->i()Z

    move-result v1

    .line 941
    invoke-virtual {p1}, Lcom/c/b/c/i;->i()Z

    move-result v2

    .line 942
    if-nez v1, :cond_12

    if-eqz v2, :cond_13

    .line 943
    :cond_12
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 945
    iget-wide v1, p0, Lcom/c/b/c/i;->x:J

    iget-wide v3, p1, Lcom/c/b/c/i;->x:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 949
    :cond_13
    invoke-virtual {p0}, Lcom/c/b/c/i;->j()Z

    move-result v1

    .line 950
    invoke-virtual {p1}, Lcom/c/b/c/i;->j()Z

    move-result v2

    .line 951
    if-nez v1, :cond_14

    if-eqz v2, :cond_15

    .line 952
    :cond_14
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 954
    iget-object v1, p0, Lcom/c/b/c/i;->y:Ljava/lang/String;

    iget-object v2, p1, Lcom/c/b/c/i;->y:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 958
    :cond_15
    invoke-virtual {p0}, Lcom/c/b/c/i;->k()Z

    move-result v1

    .line 959
    invoke-virtual {p1}, Lcom/c/b/c/i;->k()Z

    move-result v2

    .line 960
    if-nez v1, :cond_16

    if-eqz v2, :cond_17

    .line 961
    :cond_16
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 963
    iget-object v1, p0, Lcom/c/b/c/i;->z:Ljava/lang/String;

    iget-object v2, p1, Lcom/c/b/c/i;->z:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 967
    :cond_17
    invoke-virtual {p0}, Lcom/c/b/c/i;->l()Z

    move-result v1

    .line 968
    invoke-virtual {p1}, Lcom/c/b/c/i;->l()Z

    move-result v2

    .line 969
    if-nez v1, :cond_18

    if-eqz v2, :cond_19

    .line 970
    :cond_18
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 972
    iget-object v1, p0, Lcom/c/b/c/i;->A:Lcom/c/b/c/e;

    iget-object v2, p1, Lcom/c/b/c/i;->A:Lcom/c/b/c/e;

    invoke-virtual {v1, v2}, Lcom/c/b/c/e;->a(Lcom/c/b/c/e;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 976
    :cond_19
    invoke-virtual {p0}, Lcom/c/b/c/i;->m()Z

    move-result v1

    .line 977
    invoke-virtual {p1}, Lcom/c/b/c/i;->m()Z

    move-result v2

    .line 978
    if-nez v1, :cond_1a

    if-eqz v2, :cond_1b

    .line 979
    :cond_1a
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 981
    iget-object v1, p0, Lcom/c/b/c/i;->B:Ljava/lang/String;

    iget-object v2, p1, Lcom/c/b/c/i;->B:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 985
    :cond_1b
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public b(Lcom/c/b/c/i;)I
    .locals 4

    .prologue
    .line 993
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 994
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

    .line 1117
    :cond_0
    :goto_0
    return v0

    .line 1000
    :cond_1
    invoke-virtual {p0}, Lcom/c/b/c/i;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/c/i;->a()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1001
    if-nez v0, :cond_0

    .line 1004
    invoke-virtual {p0}, Lcom/c/b/c/i;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/c/b/c/i;->p:J

    iget-wide v2, p1, Lcom/c/b/c/i;->p:J

    invoke-static {v0, v1, v2, v3}, Lorg/apache/c/c;->a(JJ)I

    move-result v0

    .line 1005
    if-nez v0, :cond_0

    .line 1009
    :cond_2
    invoke-virtual {p0}, Lcom/c/b/c/i;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/c/i;->b()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1010
    if-nez v0, :cond_0

    .line 1013
    invoke-virtual {p0}, Lcom/c/b/c/i;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lcom/c/b/c/i;->q:D

    iget-wide v2, p1, Lcom/c/b/c/i;->q:D

    invoke-static {v0, v1, v2, v3}, Lorg/apache/c/c;->a(DD)I

    move-result v0

    .line 1014
    if-nez v0, :cond_0

    .line 1018
    :cond_3
    invoke-virtual {p0}, Lcom/c/b/c/i;->c()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/c/i;->c()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1019
    if-nez v0, :cond_0

    .line 1022
    invoke-virtual {p0}, Lcom/c/b/c/i;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-wide v0, p0, Lcom/c/b/c/i;->r:D

    iget-wide v2, p1, Lcom/c/b/c/i;->r:D

    invoke-static {v0, v1, v2, v3}, Lorg/apache/c/c;->a(DD)I

    move-result v0

    .line 1023
    if-nez v0, :cond_0

    .line 1027
    :cond_4
    invoke-virtual {p0}, Lcom/c/b/c/i;->d()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/c/i;->d()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1028
    if-nez v0, :cond_0

    .line 1031
    invoke-virtual {p0}, Lcom/c/b/c/i;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-wide v0, p0, Lcom/c/b/c/i;->s:D

    iget-wide v2, p1, Lcom/c/b/c/i;->s:D

    invoke-static {v0, v1, v2, v3}, Lorg/apache/c/c;->a(DD)I

    move-result v0

    .line 1032
    if-nez v0, :cond_0

    .line 1036
    :cond_5
    invoke-virtual {p0}, Lcom/c/b/c/i;->e()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/c/i;->e()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1037
    if-nez v0, :cond_0

    .line 1040
    invoke-virtual {p0}, Lcom/c/b/c/i;->e()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/c/b/c/i;->t:Ljava/lang/String;

    iget-object v1, p1, Lcom/c/b/c/i;->t:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1041
    if-nez v0, :cond_0

    .line 1045
    :cond_6
    invoke-virtual {p0}, Lcom/c/b/c/i;->f()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/c/i;->f()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1046
    if-nez v0, :cond_0

    .line 1049
    invoke-virtual {p0}, Lcom/c/b/c/i;->f()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/c/b/c/i;->u:Ljava/lang/String;

    iget-object v1, p1, Lcom/c/b/c/i;->u:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1050
    if-nez v0, :cond_0

    .line 1054
    :cond_7
    invoke-virtual {p0}, Lcom/c/b/c/i;->g()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/c/i;->g()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1055
    if-nez v0, :cond_0

    .line 1058
    invoke-virtual {p0}, Lcom/c/b/c/i;->g()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/c/b/c/i;->v:Ljava/lang/String;

    iget-object v1, p1, Lcom/c/b/c/i;->v:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1059
    if-nez v0, :cond_0

    .line 1063
    :cond_8
    invoke-virtual {p0}, Lcom/c/b/c/i;->h()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/c/i;->h()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1064
    if-nez v0, :cond_0

    .line 1067
    invoke-virtual {p0}, Lcom/c/b/c/i;->h()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/c/b/c/i;->w:Ljava/lang/String;

    iget-object v1, p1, Lcom/c/b/c/i;->w:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1068
    if-nez v0, :cond_0

    .line 1072
    :cond_9
    invoke-virtual {p0}, Lcom/c/b/c/i;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/c/i;->i()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1073
    if-nez v0, :cond_0

    .line 1076
    invoke-virtual {p0}, Lcom/c/b/c/i;->i()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-wide v0, p0, Lcom/c/b/c/i;->x:J

    iget-wide v2, p1, Lcom/c/b/c/i;->x:J

    invoke-static {v0, v1, v2, v3}, Lorg/apache/c/c;->a(JJ)I

    move-result v0

    .line 1077
    if-nez v0, :cond_0

    .line 1081
    :cond_a
    invoke-virtual {p0}, Lcom/c/b/c/i;->j()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/c/i;->j()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1082
    if-nez v0, :cond_0

    .line 1085
    invoke-virtual {p0}, Lcom/c/b/c/i;->j()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/c/b/c/i;->y:Ljava/lang/String;

    iget-object v1, p1, Lcom/c/b/c/i;->y:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1086
    if-nez v0, :cond_0

    .line 1090
    :cond_b
    invoke-virtual {p0}, Lcom/c/b/c/i;->k()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/c/i;->k()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1091
    if-nez v0, :cond_0

    .line 1094
    invoke-virtual {p0}, Lcom/c/b/c/i;->k()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/c/b/c/i;->z:Ljava/lang/String;

    iget-object v1, p1, Lcom/c/b/c/i;->z:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1095
    if-nez v0, :cond_0

    .line 1099
    :cond_c
    invoke-virtual {p0}, Lcom/c/b/c/i;->l()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/c/i;->l()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1100
    if-nez v0, :cond_0

    .line 1103
    invoke-virtual {p0}, Lcom/c/b/c/i;->l()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/c/b/c/i;->A:Lcom/c/b/c/e;

    iget-object v1, p1, Lcom/c/b/c/i;->A:Lcom/c/b/c/e;

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 1104
    if-nez v0, :cond_0

    .line 1108
    :cond_d
    invoke-virtual {p0}, Lcom/c/b/c/i;->m()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/c/i;->m()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1109
    if-nez v0, :cond_0

    .line 1112
    invoke-virtual {p0}, Lcom/c/b/c/i;->m()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/c/b/c/i;->B:Ljava/lang/String;

    iget-object v1, p1, Lcom/c/b/c/i;->B:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1113
    if-nez v0, :cond_0

    .line 1117
    :cond_e
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public b(Lorg/apache/c/b/f;)V
    .locals 2

    .prologue
    .line 1241
    invoke-virtual {p0}, Lcom/c/b/c/i;->n()V

    .line 1243
    sget-object v0, Lcom/c/b/c/i;->b:Lorg/apache/c/b/j;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Lorg/apache/c/b/j;)V

    .line 1244
    invoke-virtual {p0}, Lcom/c/b/c/i;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1245
    sget-object v0, Lcom/c/b/c/i;->c:Lorg/apache/c/b/b;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Lorg/apache/c/b/b;)V

    .line 1246
    iget-wide v0, p0, Lcom/c/b/c/i;->p:J

    invoke-virtual {p1, v0, v1}, Lorg/apache/c/b/f;->a(J)V

    .line 1247
    invoke-virtual {p1}, Lorg/apache/c/b/f;->d()V

    .line 1249
    :cond_0
    invoke-virtual {p0}, Lcom/c/b/c/i;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1250
    sget-object v0, Lcom/c/b/c/i;->d:Lorg/apache/c/b/b;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Lorg/apache/c/b/b;)V

    .line 1251
    iget-wide v0, p0, Lcom/c/b/c/i;->q:D

    invoke-virtual {p1, v0, v1}, Lorg/apache/c/b/f;->a(D)V

    .line 1252
    invoke-virtual {p1}, Lorg/apache/c/b/f;->d()V

    .line 1254
    :cond_1
    invoke-virtual {p0}, Lcom/c/b/c/i;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1255
    sget-object v0, Lcom/c/b/c/i;->e:Lorg/apache/c/b/b;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Lorg/apache/c/b/b;)V

    .line 1256
    iget-wide v0, p0, Lcom/c/b/c/i;->r:D

    invoke-virtual {p1, v0, v1}, Lorg/apache/c/b/f;->a(D)V

    .line 1257
    invoke-virtual {p1}, Lorg/apache/c/b/f;->d()V

    .line 1259
    :cond_2
    invoke-virtual {p0}, Lcom/c/b/c/i;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1260
    sget-object v0, Lcom/c/b/c/i;->f:Lorg/apache/c/b/b;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Lorg/apache/c/b/b;)V

    .line 1261
    iget-wide v0, p0, Lcom/c/b/c/i;->s:D

    invoke-virtual {p1, v0, v1}, Lorg/apache/c/b/f;->a(D)V

    .line 1262
    invoke-virtual {p1}, Lorg/apache/c/b/f;->d()V

    .line 1264
    :cond_3
    iget-object v0, p0, Lcom/c/b/c/i;->t:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 1265
    invoke-virtual {p0}, Lcom/c/b/c/i;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1266
    sget-object v0, Lcom/c/b/c/i;->g:Lorg/apache/c/b/b;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Lorg/apache/c/b/b;)V

    .line 1267
    iget-object v0, p0, Lcom/c/b/c/i;->t:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Ljava/lang/String;)V

    .line 1268
    invoke-virtual {p1}, Lorg/apache/c/b/f;->d()V

    .line 1271
    :cond_4
    iget-object v0, p0, Lcom/c/b/c/i;->u:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 1272
    invoke-virtual {p0}, Lcom/c/b/c/i;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1273
    sget-object v0, Lcom/c/b/c/i;->h:Lorg/apache/c/b/b;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Lorg/apache/c/b/b;)V

    .line 1274
    iget-object v0, p0, Lcom/c/b/c/i;->u:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Ljava/lang/String;)V

    .line 1275
    invoke-virtual {p1}, Lorg/apache/c/b/f;->d()V

    .line 1278
    :cond_5
    iget-object v0, p0, Lcom/c/b/c/i;->v:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 1279
    invoke-virtual {p0}, Lcom/c/b/c/i;->g()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1280
    sget-object v0, Lcom/c/b/c/i;->i:Lorg/apache/c/b/b;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Lorg/apache/c/b/b;)V

    .line 1281
    iget-object v0, p0, Lcom/c/b/c/i;->v:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Ljava/lang/String;)V

    .line 1282
    invoke-virtual {p1}, Lorg/apache/c/b/f;->d()V

    .line 1285
    :cond_6
    iget-object v0, p0, Lcom/c/b/c/i;->w:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 1286
    invoke-virtual {p0}, Lcom/c/b/c/i;->h()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1287
    sget-object v0, Lcom/c/b/c/i;->j:Lorg/apache/c/b/b;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Lorg/apache/c/b/b;)V

    .line 1288
    iget-object v0, p0, Lcom/c/b/c/i;->w:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Ljava/lang/String;)V

    .line 1289
    invoke-virtual {p1}, Lorg/apache/c/b/f;->d()V

    .line 1292
    :cond_7
    invoke-virtual {p0}, Lcom/c/b/c/i;->i()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1293
    sget-object v0, Lcom/c/b/c/i;->k:Lorg/apache/c/b/b;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Lorg/apache/c/b/b;)V

    .line 1294
    iget-wide v0, p0, Lcom/c/b/c/i;->x:J

    invoke-virtual {p1, v0, v1}, Lorg/apache/c/b/f;->a(J)V

    .line 1295
    invoke-virtual {p1}, Lorg/apache/c/b/f;->d()V

    .line 1297
    :cond_8
    iget-object v0, p0, Lcom/c/b/c/i;->y:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 1298
    invoke-virtual {p0}, Lcom/c/b/c/i;->j()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1299
    sget-object v0, Lcom/c/b/c/i;->l:Lorg/apache/c/b/b;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Lorg/apache/c/b/b;)V

    .line 1300
    iget-object v0, p0, Lcom/c/b/c/i;->y:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Ljava/lang/String;)V

    .line 1301
    invoke-virtual {p1}, Lorg/apache/c/b/f;->d()V

    .line 1304
    :cond_9
    iget-object v0, p0, Lcom/c/b/c/i;->z:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 1305
    invoke-virtual {p0}, Lcom/c/b/c/i;->k()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1306
    sget-object v0, Lcom/c/b/c/i;->m:Lorg/apache/c/b/b;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Lorg/apache/c/b/b;)V

    .line 1307
    iget-object v0, p0, Lcom/c/b/c/i;->z:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Ljava/lang/String;)V

    .line 1308
    invoke-virtual {p1}, Lorg/apache/c/b/f;->d()V

    .line 1311
    :cond_a
    iget-object v0, p0, Lcom/c/b/c/i;->A:Lcom/c/b/c/e;

    if-eqz v0, :cond_b

    .line 1312
    invoke-virtual {p0}, Lcom/c/b/c/i;->l()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1313
    sget-object v0, Lcom/c/b/c/i;->n:Lorg/apache/c/b/b;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Lorg/apache/c/b/b;)V

    .line 1314
    iget-object v0, p0, Lcom/c/b/c/i;->A:Lcom/c/b/c/e;

    invoke-virtual {v0, p1}, Lcom/c/b/c/e;->b(Lorg/apache/c/b/f;)V

    .line 1315
    invoke-virtual {p1}, Lorg/apache/c/b/f;->d()V

    .line 1318
    :cond_b
    iget-object v0, p0, Lcom/c/b/c/i;->B:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 1319
    invoke-virtual {p0}, Lcom/c/b/c/i;->m()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1320
    sget-object v0, Lcom/c/b/c/i;->o:Lorg/apache/c/b/b;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Lorg/apache/c/b/b;)V

    .line 1321
    iget-object v0, p0, Lcom/c/b/c/i;->B:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Ljava/lang/String;)V

    .line 1322
    invoke-virtual {p1}, Lorg/apache/c/b/f;->d()V

    .line 1325
    :cond_c
    invoke-virtual {p1}, Lorg/apache/c/b/f;->e()V

    .line 1326
    invoke-virtual {p1}, Lorg/apache/c/b/f;->c()V

    .line 1327
    return-void
.end method

.method public b(Z)V
    .locals 2

    .prologue
    .line 412
    iget-object v0, p0, Lcom/c/b/c/i;->C:[Z

    const/4 v1, 0x1

    aput-boolean p1, v0, v1

    .line 413
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 408
    iget-object v0, p0, Lcom/c/b/c/i;->C:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    return v0
.end method

.method public c(Z)V
    .locals 2

    .prologue
    .line 434
    iget-object v0, p0, Lcom/c/b/c/i;->C:[Z

    const/4 v1, 0x2

    aput-boolean p1, v0, v1

    .line 435
    return-void
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 430
    iget-object v0, p0, Lcom/c/b/c/i;->C:[Z

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 141
    check-cast p1, Lcom/c/b/c/i;

    invoke-virtual {p0, p1}, Lcom/c/b/c/i;->b(Lcom/c/b/c/i;)I

    move-result v0

    return v0
.end method

.method public d(Z)V
    .locals 2

    .prologue
    .line 456
    iget-object v0, p0, Lcom/c/b/c/i;->C:[Z

    const/4 v1, 0x3

    aput-boolean p1, v0, v1

    .line 457
    return-void
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 452
    iget-object v0, p0, Lcom/c/b/c/i;->C:[Z

    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    return v0
.end method

.method public e(Z)V
    .locals 2

    .prologue
    .line 570
    iget-object v0, p0, Lcom/c/b/c/i;->C:[Z

    const/4 v1, 0x4

    aput-boolean p1, v0, v1

    .line 571
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/c/b/c/i;->t:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 857
    if-nez p1, :cond_1

    .line 861
    :cond_0
    :goto_0
    return v0

    .line 859
    :cond_1
    instance-of v1, p1, Lcom/c/b/c/i;

    if-eqz v1, :cond_0

    .line 860
    check-cast p1, Lcom/c/b/c/i;

    invoke-virtual {p0, p1}, Lcom/c/b/c/i;->a(Lcom/c/b/c/i;)Z

    move-result v0

    goto :goto_0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/c/b/c/i;->u:Ljava/lang/String;

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
    .line 519
    iget-object v0, p0, Lcom/c/b/c/i;->v:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lcom/c/b/c/i;->w:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 989
    const/4 v0, 0x0

    return v0
.end method

.method public i()Z
    .locals 2

    .prologue
    .line 566
    iget-object v0, p0, Lcom/c/b/c/i;->C:[Z

    const/4 v1, 0x4

    aget-boolean v0, v0, v1

    return v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lcom/c/b/c/i;->y:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Lcom/c/b/c/i;->z:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lcom/c/b/c/i;->A:Lcom/c/b/c/e;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Lcom/c/b/c/i;->B:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public n()V
    .locals 0

    .prologue
    .line 1448
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1330
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "NoteAttributes("

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1331
    const/4 v0, 0x1

    .line 1333
    invoke-virtual {p0}, Lcom/c/b/c/i;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1334
    const-string v0, "subjectDate:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1335
    iget-wide v3, p0, Lcom/c/b/c/i;->p:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move v0, v1

    .line 1338
    :cond_0
    invoke-virtual {p0}, Lcom/c/b/c/i;->b()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1339
    if-nez v0, :cond_1

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1340
    :cond_1
    const-string v0, "latitude:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1341
    iget-wide v3, p0, Lcom/c/b/c/i;->q:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move v0, v1

    .line 1344
    :cond_2
    invoke-virtual {p0}, Lcom/c/b/c/i;->c()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1345
    if-nez v0, :cond_3

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1346
    :cond_3
    const-string v0, "longitude:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1347
    iget-wide v3, p0, Lcom/c/b/c/i;->r:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move v0, v1

    .line 1350
    :cond_4
    invoke-virtual {p0}, Lcom/c/b/c/i;->d()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1351
    if-nez v0, :cond_5

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1352
    :cond_5
    const-string v0, "altitude:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1353
    iget-wide v3, p0, Lcom/c/b/c/i;->s:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move v0, v1

    .line 1356
    :cond_6
    invoke-virtual {p0}, Lcom/c/b/c/i;->e()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1357
    if-nez v0, :cond_7

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1358
    :cond_7
    const-string v0, "author:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1359
    iget-object v0, p0, Lcom/c/b/c/i;->t:Ljava/lang/String;

    if-nez v0, :cond_18

    .line 1360
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    move v0, v1

    .line 1366
    :cond_8
    invoke-virtual {p0}, Lcom/c/b/c/i;->f()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1367
    if-nez v0, :cond_9

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1368
    :cond_9
    const-string v0, "source:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1369
    iget-object v0, p0, Lcom/c/b/c/i;->u:Ljava/lang/String;

    if-nez v0, :cond_19

    .line 1370
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    move v0, v1

    .line 1376
    :cond_a
    invoke-virtual {p0}, Lcom/c/b/c/i;->g()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1377
    if-nez v0, :cond_b

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1378
    :cond_b
    const-string v0, "sourceURL:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1379
    iget-object v0, p0, Lcom/c/b/c/i;->v:Ljava/lang/String;

    if-nez v0, :cond_1a

    .line 1380
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    move v0, v1

    .line 1386
    :cond_c
    invoke-virtual {p0}, Lcom/c/b/c/i;->h()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1387
    if-nez v0, :cond_d

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1388
    :cond_d
    const-string v0, "sourceApplication:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1389
    iget-object v0, p0, Lcom/c/b/c/i;->w:Ljava/lang/String;

    if-nez v0, :cond_1b

    .line 1390
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    move v0, v1

    .line 1396
    :cond_e
    invoke-virtual {p0}, Lcom/c/b/c/i;->i()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1397
    if-nez v0, :cond_f

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1398
    :cond_f
    const-string v0, "shareDate:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1399
    iget-wide v3, p0, Lcom/c/b/c/i;->x:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move v0, v1

    .line 1402
    :cond_10
    invoke-virtual {p0}, Lcom/c/b/c/i;->j()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1403
    if-nez v0, :cond_11

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1404
    :cond_11
    const-string v0, "placeName:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1405
    iget-object v0, p0, Lcom/c/b/c/i;->y:Ljava/lang/String;

    if-nez v0, :cond_1c

    .line 1406
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    move v0, v1

    .line 1412
    :cond_12
    invoke-virtual {p0}, Lcom/c/b/c/i;->k()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 1413
    if-nez v0, :cond_13

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1414
    :cond_13
    const-string v0, "contentClass:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1415
    iget-object v0, p0, Lcom/c/b/c/i;->z:Ljava/lang/String;

    if-nez v0, :cond_1d

    .line 1416
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    move v0, v1

    .line 1422
    :cond_14
    invoke-virtual {p0}, Lcom/c/b/c/i;->l()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 1423
    if-nez v0, :cond_15

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1424
    :cond_15
    const-string v0, "applicationData:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1425
    iget-object v0, p0, Lcom/c/b/c/i;->A:Lcom/c/b/c/e;

    if-nez v0, :cond_1e

    .line 1426
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1432
    :goto_6
    invoke-virtual {p0}, Lcom/c/b/c/i;->m()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1433
    if-nez v1, :cond_16

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1434
    :cond_16
    const-string v0, "lastEditedBy:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1435
    iget-object v0, p0, Lcom/c/b/c/i;->B:Ljava/lang/String;

    if-nez v0, :cond_1f

    .line 1436
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1442
    :cond_17
    :goto_7
    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1443
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1362
    :cond_18
    iget-object v0, p0, Lcom/c/b/c/i;->t:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1372
    :cond_19
    iget-object v0, p0, Lcom/c/b/c/i;->u:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1382
    :cond_1a
    iget-object v0, p0, Lcom/c/b/c/i;->v:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 1392
    :cond_1b
    iget-object v0, p0, Lcom/c/b/c/i;->w:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 1408
    :cond_1c
    iget-object v0, p0, Lcom/c/b/c/i;->y:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1418
    :cond_1d
    iget-object v0, p0, Lcom/c/b/c/i;->z:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 1428
    :cond_1e
    iget-object v0, p0, Lcom/c/b/c/i;->A:Lcom/c/b/c/e;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 1438
    :cond_1f
    iget-object v0, p0, Lcom/c/b/c/i;->B:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_20
    move v1, v0

    goto :goto_6
.end method
