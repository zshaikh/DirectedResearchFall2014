.class public Lcom/c/b/c/g;
.super Ljava/lang/Object;
.source "Note.java"

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
        "Lcom/c/b/c/g;",
        "Lcom/c/b/c/h;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/c/b/c/h;",
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

.field private static final p:Lorg/apache/c/b/b;

.field private static final q:Lorg/apache/c/b/b;


# instance fields
.field private A:I

.field private B:Ljava/lang/String;

.field private C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/c/b/c/r;",
            ">;"
        }
    .end annotation
.end field

.field private E:Lcom/c/b/c/i;

.field private F:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private G:[Z

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:[B

.field private v:I

.field private w:J

.field private x:J

.field private y:J

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/16 v7, 0x8

    const/16 v10, 0xf

    const/16 v6, 0xa

    const/16 v9, 0xb

    const/4 v8, 0x2

    .line 154
    new-instance v0, Lorg/apache/c/b/j;

    const-string v1, "Note"

    invoke-direct {v0, v1}, Lorg/apache/c/b/j;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/c/b/c/g;->b:Lorg/apache/c/b/j;

    .line 156
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "guid"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v9, v2}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/c/g;->c:Lorg/apache/c/b/b;

    .line 157
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "title"

    invoke-direct {v0, v1, v9, v8}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/c/g;->d:Lorg/apache/c/b/b;

    .line 158
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "content"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v9, v2}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/c/g;->e:Lorg/apache/c/b/b;

    .line 159
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "contentHash"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v9, v2}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/c/g;->f:Lorg/apache/c/b/b;

    .line 160
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "contentLength"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/c/g;->g:Lorg/apache/c/b/b;

    .line 161
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "created"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/c/g;->h:Lorg/apache/c/b/b;

    .line 162
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "updated"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/c/g;->i:Lorg/apache/c/b/b;

    .line 163
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "deleted"

    invoke-direct {v0, v1, v6, v7}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/c/g;->j:Lorg/apache/c/b/b;

    .line 164
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "active"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v8, v2}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/c/g;->k:Lorg/apache/c/b/b;

    .line 165
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "updateSequenceNum"

    invoke-direct {v0, v1, v7, v6}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/c/g;->l:Lorg/apache/c/b/b;

    .line 166
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "notebookGuid"

    invoke-direct {v0, v1, v9, v9}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/c/g;->m:Lorg/apache/c/b/b;

    .line 167
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "tagGuids"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v10, v2}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/c/g;->n:Lorg/apache/c/b/b;

    .line 168
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "resources"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v10, v2}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/c/g;->o:Lorg/apache/c/b/b;

    .line 169
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "attributes"

    const/16 v2, 0xc

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/c/g;->p:Lorg/apache/c/b/b;

    .line 170
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "tagNames"

    invoke-direct {v0, v1, v10, v10}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/c/g;->q:Lorg/apache/c/b/b;

    .line 299
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/c/b/c/h;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 300
    sget-object v1, Lcom/c/b/c/h;->a:Lcom/c/b/c/h;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "guid"

    new-instance v4, Lorg/apache/c/a/c;

    const-string v5, "Guid"

    invoke-direct {v4, v9, v5}, Lorg/apache/c/a/c;-><init>(BLjava/lang/String;)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    sget-object v1, Lcom/c/b/c/h;->b:Lcom/c/b/c/h;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "title"

    new-instance v4, Lorg/apache/c/a/c;

    invoke-direct {v4, v9}, Lorg/apache/c/a/c;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    sget-object v1, Lcom/c/b/c/h;->c:Lcom/c/b/c/h;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "content"

    new-instance v4, Lorg/apache/c/a/c;

    invoke-direct {v4, v9}, Lorg/apache/c/a/c;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    sget-object v1, Lcom/c/b/c/h;->d:Lcom/c/b/c/h;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "contentHash"

    new-instance v4, Lorg/apache/c/a/c;

    invoke-direct {v4, v9}, Lorg/apache/c/a/c;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    sget-object v1, Lcom/c/b/c/h;->e:Lcom/c/b/c/h;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "contentLength"

    new-instance v4, Lorg/apache/c/a/c;

    invoke-direct {v4, v7}, Lorg/apache/c/a/c;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    sget-object v1, Lcom/c/b/c/h;->f:Lcom/c/b/c/h;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "created"

    new-instance v4, Lorg/apache/c/a/c;

    const-string v5, "Timestamp"

    invoke-direct {v4, v6, v5}, Lorg/apache/c/a/c;-><init>(BLjava/lang/String;)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    sget-object v1, Lcom/c/b/c/h;->g:Lcom/c/b/c/h;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "updated"

    new-instance v4, Lorg/apache/c/a/c;

    const-string v5, "Timestamp"

    invoke-direct {v4, v6, v5}, Lorg/apache/c/a/c;-><init>(BLjava/lang/String;)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    sget-object v1, Lcom/c/b/c/h;->h:Lcom/c/b/c/h;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "deleted"

    new-instance v4, Lorg/apache/c/a/c;

    const-string v5, "Timestamp"

    invoke-direct {v4, v6, v5}, Lorg/apache/c/a/c;-><init>(BLjava/lang/String;)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    sget-object v1, Lcom/c/b/c/h;->i:Lcom/c/b/c/h;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "active"

    new-instance v4, Lorg/apache/c/a/c;

    invoke-direct {v4, v8}, Lorg/apache/c/a/c;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    sget-object v1, Lcom/c/b/c/h;->j:Lcom/c/b/c/h;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "updateSequenceNum"

    new-instance v4, Lorg/apache/c/a/c;

    invoke-direct {v4, v7}, Lorg/apache/c/a/c;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    sget-object v1, Lcom/c/b/c/h;->k:Lcom/c/b/c/h;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "notebookGuid"

    new-instance v4, Lorg/apache/c/a/c;

    invoke-direct {v4, v9}, Lorg/apache/c/a/c;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    sget-object v1, Lcom/c/b/c/h;->l:Lcom/c/b/c/h;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "tagGuids"

    new-instance v4, Lorg/apache/c/a/d;

    new-instance v5, Lorg/apache/c/a/c;

    const-string v6, "Guid"

    invoke-direct {v5, v9, v6}, Lorg/apache/c/a/c;-><init>(BLjava/lang/String;)V

    invoke-direct {v4, v10, v5}, Lorg/apache/c/a/d;-><init>(BLorg/apache/c/a/c;)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    sget-object v1, Lcom/c/b/c/h;->m:Lcom/c/b/c/h;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "resources"

    new-instance v4, Lorg/apache/c/a/d;

    new-instance v5, Lorg/apache/c/a/g;

    const/16 v6, 0xc

    const-class v7, Lcom/c/b/c/r;

    invoke-direct {v5, v6, v7}, Lorg/apache/c/a/g;-><init>(BLjava/lang/Class;)V

    invoke-direct {v4, v10, v5}, Lorg/apache/c/a/d;-><init>(BLorg/apache/c/a/c;)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    sget-object v1, Lcom/c/b/c/h;->n:Lcom/c/b/c/h;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "attributes"

    new-instance v4, Lorg/apache/c/a/g;

    const/16 v5, 0xc

    const-class v6, Lcom/c/b/c/i;

    invoke-direct {v4, v5, v6}, Lorg/apache/c/a/g;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    sget-object v1, Lcom/c/b/c/h;->o:Lcom/c/b/c/h;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "tagNames"

    new-instance v4, Lorg/apache/c/a/d;

    new-instance v5, Lorg/apache/c/a/c;

    invoke-direct {v5, v9}, Lorg/apache/c/a/c;-><init>(B)V

    invoke-direct {v4, v10, v5}, Lorg/apache/c/a/d;-><init>(BLorg/apache/c/a/c;)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/c/b/c/g;->a:Ljava/util/Map;

    .line 334
    const-class v0, Lcom/c/b/c/g;

    sget-object v1, Lcom/c/b/c/g;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/c/a/b;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 335
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    const/4 v0, 0x6

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/c/b/c/g;->G:[Z

    .line 338
    return-void
.end method


# virtual methods
.method public a(Lcom/c/b/c/i;)V
    .locals 0

    .prologue
    .line 749
    iput-object p1, p0, Lcom/c/b/c/g;->E:Lcom/c/b/c/i;

    .line 750
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 449
    iput-object p1, p0, Lcom/c/b/c/g;->s:Ljava/lang/String;

    .line 450
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 787
    iput-object p1, p0, Lcom/c/b/c/g;->F:Ljava/util/List;

    .line 788
    return-void
.end method

.method public a(Lorg/apache/c/b/f;)V
    .locals 9

    .prologue
    const/16 v8, 0xf

    const/16 v7, 0xa

    const/4 v1, 0x0

    const/16 v6, 0xb

    const/4 v5, 0x1

    .line 1328
    invoke-virtual {p1}, Lorg/apache/c/b/f;->j()Lorg/apache/c/b/j;

    .line 1331
    :goto_0
    invoke-virtual {p1}, Lorg/apache/c/b/f;->l()Lorg/apache/c/b/b;

    move-result-object v0

    .line 1332
    iget-byte v2, v0, Lorg/apache/c/b/b;->b:B

    if-nez v2, :cond_0

    .line 1484
    invoke-virtual {p1}, Lorg/apache/c/b/f;->k()V

    .line 1485
    invoke-virtual {p0}, Lcom/c/b/c/g;->p()V

    .line 1486
    return-void

    .line 1335
    :cond_0
    iget-short v2, v0, Lorg/apache/c/b/b;->c:S

    packed-switch v2, :pswitch_data_0

    .line 1480
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    .line 1482
    :goto_1
    invoke-virtual {p1}, Lorg/apache/c/b/f;->m()V

    goto :goto_0

    .line 1337
    :pswitch_0
    iget-byte v2, v0, Lorg/apache/c/b/b;->b:B

    if-ne v2, v6, :cond_1

    .line 1338
    invoke-virtual {p1}, Lorg/apache/c/b/f;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/c/b/c/g;->r:Ljava/lang/String;

    goto :goto_1

    .line 1340
    :cond_1
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto :goto_1

    .line 1344
    :pswitch_1
    iget-byte v2, v0, Lorg/apache/c/b/b;->b:B

    if-ne v2, v6, :cond_2

    .line 1345
    invoke-virtual {p1}, Lorg/apache/c/b/f;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/c/b/c/g;->s:Ljava/lang/String;

    goto :goto_1

    .line 1347
    :cond_2
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto :goto_1

    .line 1351
    :pswitch_2
    iget-byte v2, v0, Lorg/apache/c/b/b;->b:B

    if-ne v2, v6, :cond_3

    .line 1352
    invoke-virtual {p1}, Lorg/apache/c/b/f;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/c/b/c/g;->t:Ljava/lang/String;

    goto :goto_1

    .line 1354
    :cond_3
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto :goto_1

    .line 1358
    :pswitch_3
    iget-byte v2, v0, Lorg/apache/c/b/b;->b:B

    if-ne v2, v6, :cond_4

    .line 1359
    invoke-virtual {p1}, Lorg/apache/c/b/f;->B()[B

    move-result-object v0

    iput-object v0, p0, Lcom/c/b/c/g;->u:[B

    goto :goto_1

    .line 1361
    :cond_4
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto :goto_1

    .line 1365
    :pswitch_4
    iget-byte v2, v0, Lorg/apache/c/b/b;->b:B

    const/16 v3, 0x8

    if-ne v2, v3, :cond_5

    .line 1366
    invoke-virtual {p1}, Lorg/apache/c/b/f;->w()I

    move-result v0

    iput v0, p0, Lcom/c/b/c/g;->v:I

    .line 1367
    invoke-virtual {p0, v5}, Lcom/c/b/c/g;->a(Z)V

    goto :goto_1

    .line 1369
    :cond_5
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto :goto_1

    .line 1373
    :pswitch_5
    iget-byte v2, v0, Lorg/apache/c/b/b;->b:B

    if-ne v2, v7, :cond_6

    .line 1374
    invoke-virtual {p1}, Lorg/apache/c/b/f;->x()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/c/b/c/g;->w:J

    .line 1375
    invoke-virtual {p0, v5}, Lcom/c/b/c/g;->b(Z)V

    goto :goto_1

    .line 1377
    :cond_6
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto :goto_1

    .line 1381
    :pswitch_6
    iget-byte v2, v0, Lorg/apache/c/b/b;->b:B

    if-ne v2, v7, :cond_7

    .line 1382
    invoke-virtual {p1}, Lorg/apache/c/b/f;->x()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/c/b/c/g;->x:J

    .line 1383
    invoke-virtual {p0, v5}, Lcom/c/b/c/g;->c(Z)V

    goto :goto_1

    .line 1385
    :cond_7
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto/16 :goto_1

    .line 1389
    :pswitch_7
    iget-byte v2, v0, Lorg/apache/c/b/b;->b:B

    if-ne v2, v7, :cond_8

    .line 1390
    invoke-virtual {p1}, Lorg/apache/c/b/f;->x()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/c/b/c/g;->y:J

    .line 1391
    invoke-virtual {p0, v5}, Lcom/c/b/c/g;->d(Z)V

    goto/16 :goto_1

    .line 1393
    :cond_8
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto/16 :goto_1

    .line 1397
    :pswitch_8
    iget-byte v2, v0, Lorg/apache/c/b/b;->b:B

    const/4 v3, 0x2

    if-ne v2, v3, :cond_9

    .line 1398
    invoke-virtual {p1}, Lorg/apache/c/b/f;->t()Z

    move-result v0

    iput-boolean v0, p0, Lcom/c/b/c/g;->z:Z

    .line 1399
    invoke-virtual {p0, v5}, Lcom/c/b/c/g;->e(Z)V

    goto/16 :goto_1

    .line 1401
    :cond_9
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto/16 :goto_1

    .line 1405
    :pswitch_9
    iget-byte v2, v0, Lorg/apache/c/b/b;->b:B

    const/16 v3, 0x8

    if-ne v2, v3, :cond_a

    .line 1406
    invoke-virtual {p1}, Lorg/apache/c/b/f;->w()I

    move-result v0

    iput v0, p0, Lcom/c/b/c/g;->A:I

    .line 1407
    invoke-virtual {p0, v5}, Lcom/c/b/c/g;->f(Z)V

    goto/16 :goto_1

    .line 1409
    :cond_a
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto/16 :goto_1

    .line 1413
    :pswitch_a
    iget-byte v2, v0, Lorg/apache/c/b/b;->b:B

    if-ne v2, v6, :cond_b

    .line 1414
    invoke-virtual {p1}, Lorg/apache/c/b/f;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/c/b/c/g;->B:Ljava/lang/String;

    goto/16 :goto_1

    .line 1416
    :cond_b
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto/16 :goto_1

    .line 1420
    :pswitch_b
    iget-byte v2, v0, Lorg/apache/c/b/b;->b:B

    if-ne v2, v8, :cond_d

    .line 1422
    invoke-virtual {p1}, Lorg/apache/c/b/f;->p()Lorg/apache/c/b/c;

    move-result-object v2

    .line 1423
    new-instance v0, Ljava/util/ArrayList;

    iget v3, v2, Lorg/apache/c/b/c;->b:I

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/c/b/c/g;->C:Ljava/util/List;

    move v0, v1

    .line 1424
    :goto_2
    iget v3, v2, Lorg/apache/c/b/c;->b:I

    if-ge v0, v3, :cond_c

    .line 1427
    invoke-virtual {p1}, Lorg/apache/c/b/f;->z()Ljava/lang/String;

    move-result-object v3

    .line 1428
    iget-object v4, p0, Lcom/c/b/c/g;->C:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1424
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1430
    :cond_c
    invoke-virtual {p1}, Lorg/apache/c/b/f;->q()V

    goto/16 :goto_1

    .line 1433
    :cond_d
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto/16 :goto_1

    .line 1437
    :pswitch_c
    iget-byte v2, v0, Lorg/apache/c/b/b;->b:B

    if-ne v2, v8, :cond_f

    .line 1439
    invoke-virtual {p1}, Lorg/apache/c/b/f;->p()Lorg/apache/c/b/c;

    move-result-object v2

    .line 1440
    new-instance v0, Ljava/util/ArrayList;

    iget v3, v2, Lorg/apache/c/b/c;->b:I

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/c/b/c/g;->D:Ljava/util/List;

    move v0, v1

    .line 1441
    :goto_3
    iget v3, v2, Lorg/apache/c/b/c;->b:I

    if-ge v0, v3, :cond_e

    .line 1444
    new-instance v3, Lcom/c/b/c/r;

    invoke-direct {v3}, Lcom/c/b/c/r;-><init>()V

    .line 1445
    invoke-virtual {v3, p1}, Lcom/c/b/c/r;->a(Lorg/apache/c/b/f;)V

    .line 1446
    iget-object v4, p0, Lcom/c/b/c/g;->D:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1441
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1448
    :cond_e
    invoke-virtual {p1}, Lorg/apache/c/b/f;->q()V

    goto/16 :goto_1

    .line 1451
    :cond_f
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto/16 :goto_1

    .line 1455
    :pswitch_d
    iget-byte v2, v0, Lorg/apache/c/b/b;->b:B

    const/16 v3, 0xc

    if-ne v2, v3, :cond_10

    .line 1456
    new-instance v0, Lcom/c/b/c/i;

    invoke-direct {v0}, Lcom/c/b/c/i;-><init>()V

    iput-object v0, p0, Lcom/c/b/c/g;->E:Lcom/c/b/c/i;

    .line 1457
    iget-object v0, p0, Lcom/c/b/c/g;->E:Lcom/c/b/c/i;

    invoke-virtual {v0, p1}, Lcom/c/b/c/i;->a(Lorg/apache/c/b/f;)V

    goto/16 :goto_1

    .line 1459
    :cond_10
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto/16 :goto_1

    .line 1463
    :pswitch_e
    iget-byte v2, v0, Lorg/apache/c/b/b;->b:B

    if-ne v2, v8, :cond_12

    .line 1465
    invoke-virtual {p1}, Lorg/apache/c/b/f;->p()Lorg/apache/c/b/c;

    move-result-object v2

    .line 1466
    new-instance v0, Ljava/util/ArrayList;

    iget v3, v2, Lorg/apache/c/b/c;->b:I

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/c/b/c/g;->F:Ljava/util/List;

    move v0, v1

    .line 1467
    :goto_4
    iget v3, v2, Lorg/apache/c/b/c;->b:I

    if-ge v0, v3, :cond_11

    .line 1470
    invoke-virtual {p1}, Lorg/apache/c/b/f;->z()Ljava/lang/String;

    move-result-object v3

    .line 1471
    iget-object v4, p0, Lcom/c/b/c/g;->F:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1467
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1473
    :cond_11
    invoke-virtual {p1}, Lorg/apache/c/b/f;->q()V

    goto/16 :goto_1

    .line 1476
    :cond_12
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto/16 :goto_1

    .line 1335
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
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 532
    iget-object v0, p0, Lcom/c/b/c/g;->G:[Z

    const/4 v1, 0x0

    aput-boolean p1, v0, v1

    .line 533
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/c/b/c/g;->r:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/c/b/c/g;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1031
    if-nez p1, :cond_1

    .line 1169
    :cond_0
    :goto_0
    return v0

    .line 1034
    :cond_1
    invoke-virtual {p0}, Lcom/c/b/c/g;->a()Z

    move-result v1

    .line 1035
    invoke-virtual {p1}, Lcom/c/b/c/g;->a()Z

    move-result v2

    .line 1036
    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    .line 1037
    :cond_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 1039
    iget-object v1, p0, Lcom/c/b/c/g;->r:Ljava/lang/String;

    iget-object v2, p1, Lcom/c/b/c/g;->r:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1043
    :cond_3
    invoke-virtual {p0}, Lcom/c/b/c/g;->b()Z

    move-result v1

    .line 1044
    invoke-virtual {p1}, Lcom/c/b/c/g;->b()Z

    move-result v2

    .line 1045
    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    .line 1046
    :cond_4
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 1048
    iget-object v1, p0, Lcom/c/b/c/g;->s:Ljava/lang/String;

    iget-object v2, p1, Lcom/c/b/c/g;->s:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1052
    :cond_5
    invoke-virtual {p0}, Lcom/c/b/c/g;->c()Z

    move-result v1

    .line 1053
    invoke-virtual {p1}, Lcom/c/b/c/g;->c()Z

    move-result v2

    .line 1054
    if-nez v1, :cond_6

    if-eqz v2, :cond_7

    .line 1055
    :cond_6
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 1057
    iget-object v1, p0, Lcom/c/b/c/g;->t:Ljava/lang/String;

    iget-object v2, p1, Lcom/c/b/c/g;->t:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1061
    :cond_7
    invoke-virtual {p0}, Lcom/c/b/c/g;->d()Z

    move-result v1

    .line 1062
    invoke-virtual {p1}, Lcom/c/b/c/g;->d()Z

    move-result v2

    .line 1063
    if-nez v1, :cond_8

    if-eqz v2, :cond_9

    .line 1064
    :cond_8
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 1066
    iget-object v1, p0, Lcom/c/b/c/g;->u:[B

    iget-object v2, p1, Lcom/c/b/c/g;->u:[B

    invoke-static {v1, v2}, Lorg/apache/c/c;->a([B[B)I

    move-result v1

    if-nez v1, :cond_0

    .line 1070
    :cond_9
    invoke-virtual {p0}, Lcom/c/b/c/g;->e()Z

    move-result v1

    .line 1071
    invoke-virtual {p1}, Lcom/c/b/c/g;->e()Z

    move-result v2

    .line 1072
    if-nez v1, :cond_a

    if-eqz v2, :cond_b

    .line 1073
    :cond_a
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 1075
    iget v1, p0, Lcom/c/b/c/g;->v:I

    iget v2, p1, Lcom/c/b/c/g;->v:I

    if-ne v1, v2, :cond_0

    .line 1079
    :cond_b
    invoke-virtual {p0}, Lcom/c/b/c/g;->f()Z

    move-result v1

    .line 1080
    invoke-virtual {p1}, Lcom/c/b/c/g;->f()Z

    move-result v2

    .line 1081
    if-nez v1, :cond_c

    if-eqz v2, :cond_d

    .line 1082
    :cond_c
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 1084
    iget-wide v1, p0, Lcom/c/b/c/g;->w:J

    iget-wide v3, p1, Lcom/c/b/c/g;->w:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 1088
    :cond_d
    invoke-virtual {p0}, Lcom/c/b/c/g;->g()Z

    move-result v1

    .line 1089
    invoke-virtual {p1}, Lcom/c/b/c/g;->g()Z

    move-result v2

    .line 1090
    if-nez v1, :cond_e

    if-eqz v2, :cond_f

    .line 1091
    :cond_e
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 1093
    iget-wide v1, p0, Lcom/c/b/c/g;->x:J

    iget-wide v3, p1, Lcom/c/b/c/g;->x:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 1097
    :cond_f
    invoke-virtual {p0}, Lcom/c/b/c/g;->h()Z

    move-result v1

    .line 1098
    invoke-virtual {p1}, Lcom/c/b/c/g;->h()Z

    move-result v2

    .line 1099
    if-nez v1, :cond_10

    if-eqz v2, :cond_11

    .line 1100
    :cond_10
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 1102
    iget-wide v1, p0, Lcom/c/b/c/g;->y:J

    iget-wide v3, p1, Lcom/c/b/c/g;->y:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 1106
    :cond_11
    invoke-virtual {p0}, Lcom/c/b/c/g;->i()Z

    move-result v1

    .line 1107
    invoke-virtual {p1}, Lcom/c/b/c/g;->i()Z

    move-result v2

    .line 1108
    if-nez v1, :cond_12

    if-eqz v2, :cond_13

    .line 1109
    :cond_12
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 1111
    iget-boolean v1, p0, Lcom/c/b/c/g;->z:Z

    iget-boolean v2, p1, Lcom/c/b/c/g;->z:Z

    if-ne v1, v2, :cond_0

    .line 1115
    :cond_13
    invoke-virtual {p0}, Lcom/c/b/c/g;->j()Z

    move-result v1

    .line 1116
    invoke-virtual {p1}, Lcom/c/b/c/g;->j()Z

    move-result v2

    .line 1117
    if-nez v1, :cond_14

    if-eqz v2, :cond_15

    .line 1118
    :cond_14
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 1120
    iget v1, p0, Lcom/c/b/c/g;->A:I

    iget v2, p1, Lcom/c/b/c/g;->A:I

    if-ne v1, v2, :cond_0

    .line 1124
    :cond_15
    invoke-virtual {p0}, Lcom/c/b/c/g;->k()Z

    move-result v1

    .line 1125
    invoke-virtual {p1}, Lcom/c/b/c/g;->k()Z

    move-result v2

    .line 1126
    if-nez v1, :cond_16

    if-eqz v2, :cond_17

    .line 1127
    :cond_16
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 1129
    iget-object v1, p0, Lcom/c/b/c/g;->B:Ljava/lang/String;

    iget-object v2, p1, Lcom/c/b/c/g;->B:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1133
    :cond_17
    invoke-virtual {p0}, Lcom/c/b/c/g;->l()Z

    move-result v1

    .line 1134
    invoke-virtual {p1}, Lcom/c/b/c/g;->l()Z

    move-result v2

    .line 1135
    if-nez v1, :cond_18

    if-eqz v2, :cond_19

    .line 1136
    :cond_18
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 1138
    iget-object v1, p0, Lcom/c/b/c/g;->C:Ljava/util/List;

    iget-object v2, p1, Lcom/c/b/c/g;->C:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1142
    :cond_19
    invoke-virtual {p0}, Lcom/c/b/c/g;->m()Z

    move-result v1

    .line 1143
    invoke-virtual {p1}, Lcom/c/b/c/g;->m()Z

    move-result v2

    .line 1144
    if-nez v1, :cond_1a

    if-eqz v2, :cond_1b

    .line 1145
    :cond_1a
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 1147
    iget-object v1, p0, Lcom/c/b/c/g;->D:Ljava/util/List;

    iget-object v2, p1, Lcom/c/b/c/g;->D:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1151
    :cond_1b
    invoke-virtual {p0}, Lcom/c/b/c/g;->n()Z

    move-result v1

    .line 1152
    invoke-virtual {p1}, Lcom/c/b/c/g;->n()Z

    move-result v2

    .line 1153
    if-nez v1, :cond_1c

    if-eqz v2, :cond_1d

    .line 1154
    :cond_1c
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 1156
    iget-object v1, p0, Lcom/c/b/c/g;->E:Lcom/c/b/c/i;

    iget-object v2, p1, Lcom/c/b/c/g;->E:Lcom/c/b/c/i;

    invoke-virtual {v1, v2}, Lcom/c/b/c/i;->a(Lcom/c/b/c/i;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1160
    :cond_1d
    invoke-virtual {p0}, Lcom/c/b/c/g;->o()Z

    move-result v1

    .line 1161
    invoke-virtual {p1}, Lcom/c/b/c/g;->o()Z

    move-result v2

    .line 1162
    if-nez v1, :cond_1e

    if-eqz v2, :cond_1f

    .line 1163
    :cond_1e
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 1165
    iget-object v1, p0, Lcom/c/b/c/g;->F:Ljava/util/List;

    iget-object v2, p1, Lcom/c/b/c/g;->F:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1169
    :cond_1f
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public b(Lcom/c/b/c/g;)I
    .locals 4

    .prologue
    .line 1177
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1178
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

    .line 1319
    :cond_0
    :goto_0
    return v0

    .line 1184
    :cond_1
    invoke-virtual {p0}, Lcom/c/b/c/g;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/c/g;->a()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1185
    if-nez v0, :cond_0

    .line 1188
    invoke-virtual {p0}, Lcom/c/b/c/g;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/c/b/c/g;->r:Ljava/lang/String;

    iget-object v1, p1, Lcom/c/b/c/g;->r:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1189
    if-nez v0, :cond_0

    .line 1193
    :cond_2
    invoke-virtual {p0}, Lcom/c/b/c/g;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/c/g;->b()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1194
    if-nez v0, :cond_0

    .line 1197
    invoke-virtual {p0}, Lcom/c/b/c/g;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/c/b/c/g;->s:Ljava/lang/String;

    iget-object v1, p1, Lcom/c/b/c/g;->s:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1198
    if-nez v0, :cond_0

    .line 1202
    :cond_3
    invoke-virtual {p0}, Lcom/c/b/c/g;->c()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/c/g;->c()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1203
    if-nez v0, :cond_0

    .line 1206
    invoke-virtual {p0}, Lcom/c/b/c/g;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/c/b/c/g;->t:Ljava/lang/String;

    iget-object v1, p1, Lcom/c/b/c/g;->t:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1207
    if-nez v0, :cond_0

    .line 1211
    :cond_4
    invoke-virtual {p0}, Lcom/c/b/c/g;->d()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/c/g;->d()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1212
    if-nez v0, :cond_0

    .line 1215
    invoke-virtual {p0}, Lcom/c/b/c/g;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/c/b/c/g;->u:[B

    iget-object v1, p1, Lcom/c/b/c/g;->u:[B

    invoke-static {v0, v1}, Lorg/apache/c/c;->a([B[B)I

    move-result v0

    .line 1216
    if-nez v0, :cond_0

    .line 1220
    :cond_5
    invoke-virtual {p0}, Lcom/c/b/c/g;->e()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/c/g;->e()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1221
    if-nez v0, :cond_0

    .line 1224
    invoke-virtual {p0}, Lcom/c/b/c/g;->e()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/c/b/c/g;->v:I

    iget v1, p1, Lcom/c/b/c/g;->v:I

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(II)I

    move-result v0

    .line 1225
    if-nez v0, :cond_0

    .line 1229
    :cond_6
    invoke-virtual {p0}, Lcom/c/b/c/g;->f()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/c/g;->f()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1230
    if-nez v0, :cond_0

    .line 1233
    invoke-virtual {p0}, Lcom/c/b/c/g;->f()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-wide v0, p0, Lcom/c/b/c/g;->w:J

    iget-wide v2, p1, Lcom/c/b/c/g;->w:J

    invoke-static {v0, v1, v2, v3}, Lorg/apache/c/c;->a(JJ)I

    move-result v0

    .line 1234
    if-nez v0, :cond_0

    .line 1238
    :cond_7
    invoke-virtual {p0}, Lcom/c/b/c/g;->g()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/c/g;->g()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1239
    if-nez v0, :cond_0

    .line 1242
    invoke-virtual {p0}, Lcom/c/b/c/g;->g()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-wide v0, p0, Lcom/c/b/c/g;->x:J

    iget-wide v2, p1, Lcom/c/b/c/g;->x:J

    invoke-static {v0, v1, v2, v3}, Lorg/apache/c/c;->a(JJ)I

    move-result v0

    .line 1243
    if-nez v0, :cond_0

    .line 1247
    :cond_8
    invoke-virtual {p0}, Lcom/c/b/c/g;->h()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/c/g;->h()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1248
    if-nez v0, :cond_0

    .line 1251
    invoke-virtual {p0}, Lcom/c/b/c/g;->h()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-wide v0, p0, Lcom/c/b/c/g;->y:J

    iget-wide v2, p1, Lcom/c/b/c/g;->y:J

    invoke-static {v0, v1, v2, v3}, Lorg/apache/c/c;->a(JJ)I

    move-result v0

    .line 1252
    if-nez v0, :cond_0

    .line 1256
    :cond_9
    invoke-virtual {p0}, Lcom/c/b/c/g;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/c/g;->i()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1257
    if-nez v0, :cond_0

    .line 1260
    invoke-virtual {p0}, Lcom/c/b/c/g;->i()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/c/b/c/g;->z:Z

    iget-boolean v1, p1, Lcom/c/b/c/g;->z:Z

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(ZZ)I

    move-result v0

    .line 1261
    if-nez v0, :cond_0

    .line 1265
    :cond_a
    invoke-virtual {p0}, Lcom/c/b/c/g;->j()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/c/g;->j()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1266
    if-nez v0, :cond_0

    .line 1269
    invoke-virtual {p0}, Lcom/c/b/c/g;->j()Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/c/b/c/g;->A:I

    iget v1, p1, Lcom/c/b/c/g;->A:I

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(II)I

    move-result v0

    .line 1270
    if-nez v0, :cond_0

    .line 1274
    :cond_b
    invoke-virtual {p0}, Lcom/c/b/c/g;->k()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/c/g;->k()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1275
    if-nez v0, :cond_0

    .line 1278
    invoke-virtual {p0}, Lcom/c/b/c/g;->k()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/c/b/c/g;->B:Ljava/lang/String;

    iget-object v1, p1, Lcom/c/b/c/g;->B:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1279
    if-nez v0, :cond_0

    .line 1283
    :cond_c
    invoke-virtual {p0}, Lcom/c/b/c/g;->l()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/c/g;->l()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1284
    if-nez v0, :cond_0

    .line 1287
    invoke-virtual {p0}, Lcom/c/b/c/g;->l()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/c/b/c/g;->C:Ljava/util/List;

    iget-object v1, p1, Lcom/c/b/c/g;->C:Ljava/util/List;

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    .line 1288
    if-nez v0, :cond_0

    .line 1292
    :cond_d
    invoke-virtual {p0}, Lcom/c/b/c/g;->m()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/c/g;->m()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1293
    if-nez v0, :cond_0

    .line 1296
    invoke-virtual {p0}, Lcom/c/b/c/g;->m()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/c/b/c/g;->D:Ljava/util/List;

    iget-object v1, p1, Lcom/c/b/c/g;->D:Ljava/util/List;

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    .line 1297
    if-nez v0, :cond_0

    .line 1301
    :cond_e
    invoke-virtual {p0}, Lcom/c/b/c/g;->n()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/c/g;->n()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1302
    if-nez v0, :cond_0

    .line 1305
    invoke-virtual {p0}, Lcom/c/b/c/g;->n()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/c/b/c/g;->E:Lcom/c/b/c/i;

    iget-object v1, p1, Lcom/c/b/c/g;->E:Lcom/c/b/c/i;

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 1306
    if-nez v0, :cond_0

    .line 1310
    :cond_f
    invoke-virtual {p0}, Lcom/c/b/c/g;->o()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/c/g;->o()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 1311
    if-nez v0, :cond_0

    .line 1314
    invoke-virtual {p0}, Lcom/c/b/c/g;->o()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/c/b/c/g;->F:Ljava/util/List;

    iget-object v1, p1, Lcom/c/b/c/g;->F:Ljava/util/List;

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    .line 1315
    if-nez v0, :cond_0

    .line 1319
    :cond_10
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 472
    iput-object p1, p0, Lcom/c/b/c/g;->t:Ljava/lang/String;

    .line 473
    return-void
.end method

.method public b(Lorg/apache/c/b/f;)V
    .locals 4

    .prologue
    const/16 v3, 0xb

    .line 1489
    invoke-virtual {p0}, Lcom/c/b/c/g;->p()V

    .line 1491
    sget-object v0, Lcom/c/b/c/g;->b:Lorg/apache/c/b/j;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Lorg/apache/c/b/j;)V

    .line 1492
    iget-object v0, p0, Lcom/c/b/c/g;->r:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1493
    invoke-virtual {p0}, Lcom/c/b/c/g;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1494
    sget-object v0, Lcom/c/b/c/g;->c:Lorg/apache/c/b/b;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Lorg/apache/c/b/b;)V

    .line 1495
    iget-object v0, p0, Lcom/c/b/c/g;->r:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Ljava/lang/String;)V

    .line 1496
    invoke-virtual {p1}, Lorg/apache/c/b/f;->d()V

    .line 1499
    :cond_0
    iget-object v0, p0, Lcom/c/b/c/g;->s:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1500
    invoke-virtual {p0}, Lcom/c/b/c/g;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1501
    sget-object v0, Lcom/c/b/c/g;->d:Lorg/apache/c/b/b;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Lorg/apache/c/b/b;)V

    .line 1502
    iget-object v0, p0, Lcom/c/b/c/g;->s:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Ljava/lang/String;)V

    .line 1503
    invoke-virtual {p1}, Lorg/apache/c/b/f;->d()V

    .line 1506
    :cond_1
    iget-object v0, p0, Lcom/c/b/c/g;->t:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1507
    invoke-virtual {p0}, Lcom/c/b/c/g;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1508
    sget-object v0, Lcom/c/b/c/g;->e:Lorg/apache/c/b/b;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Lorg/apache/c/b/b;)V

    .line 1509
    iget-object v0, p0, Lcom/c/b/c/g;->t:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Ljava/lang/String;)V

    .line 1510
    invoke-virtual {p1}, Lorg/apache/c/b/f;->d()V

    .line 1513
    :cond_2
    iget-object v0, p0, Lcom/c/b/c/g;->u:[B

    if-eqz v0, :cond_3

    .line 1514
    invoke-virtual {p0}, Lcom/c/b/c/g;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1515
    sget-object v0, Lcom/c/b/c/g;->f:Lorg/apache/c/b/b;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Lorg/apache/c/b/b;)V

    .line 1516
    iget-object v0, p0, Lcom/c/b/c/g;->u:[B

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a([B)V

    .line 1517
    invoke-virtual {p1}, Lorg/apache/c/b/f;->d()V

    .line 1520
    :cond_3
    invoke-virtual {p0}, Lcom/c/b/c/g;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1521
    sget-object v0, Lcom/c/b/c/g;->g:Lorg/apache/c/b/b;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Lorg/apache/c/b/b;)V

    .line 1522
    iget v0, p0, Lcom/c/b/c/g;->v:I

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(I)V

    .line 1523
    invoke-virtual {p1}, Lorg/apache/c/b/f;->d()V

    .line 1525
    :cond_4
    invoke-virtual {p0}, Lcom/c/b/c/g;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1526
    sget-object v0, Lcom/c/b/c/g;->h:Lorg/apache/c/b/b;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Lorg/apache/c/b/b;)V

    .line 1527
    iget-wide v0, p0, Lcom/c/b/c/g;->w:J

    invoke-virtual {p1, v0, v1}, Lorg/apache/c/b/f;->a(J)V

    .line 1528
    invoke-virtual {p1}, Lorg/apache/c/b/f;->d()V

    .line 1530
    :cond_5
    invoke-virtual {p0}, Lcom/c/b/c/g;->g()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1531
    sget-object v0, Lcom/c/b/c/g;->i:Lorg/apache/c/b/b;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Lorg/apache/c/b/b;)V

    .line 1532
    iget-wide v0, p0, Lcom/c/b/c/g;->x:J

    invoke-virtual {p1, v0, v1}, Lorg/apache/c/b/f;->a(J)V

    .line 1533
    invoke-virtual {p1}, Lorg/apache/c/b/f;->d()V

    .line 1535
    :cond_6
    invoke-virtual {p0}, Lcom/c/b/c/g;->h()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1536
    sget-object v0, Lcom/c/b/c/g;->j:Lorg/apache/c/b/b;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Lorg/apache/c/b/b;)V

    .line 1537
    iget-wide v0, p0, Lcom/c/b/c/g;->y:J

    invoke-virtual {p1, v0, v1}, Lorg/apache/c/b/f;->a(J)V

    .line 1538
    invoke-virtual {p1}, Lorg/apache/c/b/f;->d()V

    .line 1540
    :cond_7
    invoke-virtual {p0}, Lcom/c/b/c/g;->i()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1541
    sget-object v0, Lcom/c/b/c/g;->k:Lorg/apache/c/b/b;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Lorg/apache/c/b/b;)V

    .line 1542
    iget-boolean v0, p0, Lcom/c/b/c/g;->z:Z

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Z)V

    .line 1543
    invoke-virtual {p1}, Lorg/apache/c/b/f;->d()V

    .line 1545
    :cond_8
    invoke-virtual {p0}, Lcom/c/b/c/g;->j()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1546
    sget-object v0, Lcom/c/b/c/g;->l:Lorg/apache/c/b/b;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Lorg/apache/c/b/b;)V

    .line 1547
    iget v0, p0, Lcom/c/b/c/g;->A:I

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(I)V

    .line 1548
    invoke-virtual {p1}, Lorg/apache/c/b/f;->d()V

    .line 1550
    :cond_9
    iget-object v0, p0, Lcom/c/b/c/g;->B:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 1551
    invoke-virtual {p0}, Lcom/c/b/c/g;->k()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1552
    sget-object v0, Lcom/c/b/c/g;->m:Lorg/apache/c/b/b;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Lorg/apache/c/b/b;)V

    .line 1553
    iget-object v0, p0, Lcom/c/b/c/g;->B:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Ljava/lang/String;)V

    .line 1554
    invoke-virtual {p1}, Lorg/apache/c/b/f;->d()V

    .line 1557
    :cond_a
    iget-object v0, p0, Lcom/c/b/c/g;->C:Ljava/util/List;

    if-eqz v0, :cond_c

    .line 1558
    invoke-virtual {p0}, Lcom/c/b/c/g;->l()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1559
    sget-object v0, Lcom/c/b/c/g;->n:Lorg/apache/c/b/b;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Lorg/apache/c/b/b;)V

    .line 1561
    new-instance v0, Lorg/apache/c/b/c;

    iget-object v1, p0, Lcom/c/b/c/g;->C:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v3, v1}, Lorg/apache/c/b/c;-><init>(BI)V

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Lorg/apache/c/b/c;)V

    .line 1562
    iget-object v0, p0, Lcom/c/b/c/g;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1564
    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1566
    :cond_b
    invoke-virtual {p1}, Lorg/apache/c/b/f;->g()V

    .line 1568
    invoke-virtual {p1}, Lorg/apache/c/b/f;->d()V

    .line 1571
    :cond_c
    iget-object v0, p0, Lcom/c/b/c/g;->D:Ljava/util/List;

    if-eqz v0, :cond_e

    .line 1572
    invoke-virtual {p0}, Lcom/c/b/c/g;->m()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1573
    sget-object v0, Lcom/c/b/c/g;->o:Lorg/apache/c/b/b;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Lorg/apache/c/b/b;)V

    .line 1575
    new-instance v0, Lorg/apache/c/b/c;

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/c/b/c/g;->D:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/c/b/c;-><init>(BI)V

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Lorg/apache/c/b/c;)V

    .line 1576
    iget-object v0, p0, Lcom/c/b/c/g;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/b/c/r;

    .line 1578
    invoke-virtual {v0, p1}, Lcom/c/b/c/r;->b(Lorg/apache/c/b/f;)V

    goto :goto_1

    .line 1580
    :cond_d
    invoke-virtual {p1}, Lorg/apache/c/b/f;->g()V

    .line 1582
    invoke-virtual {p1}, Lorg/apache/c/b/f;->d()V

    .line 1585
    :cond_e
    iget-object v0, p0, Lcom/c/b/c/g;->E:Lcom/c/b/c/i;

    if-eqz v0, :cond_f

    .line 1586
    invoke-virtual {p0}, Lcom/c/b/c/g;->n()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1587
    sget-object v0, Lcom/c/b/c/g;->p:Lorg/apache/c/b/b;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Lorg/apache/c/b/b;)V

    .line 1588
    iget-object v0, p0, Lcom/c/b/c/g;->E:Lcom/c/b/c/i;

    invoke-virtual {v0, p1}, Lcom/c/b/c/i;->b(Lorg/apache/c/b/f;)V

    .line 1589
    invoke-virtual {p1}, Lorg/apache/c/b/f;->d()V

    .line 1592
    :cond_f
    iget-object v0, p0, Lcom/c/b/c/g;->F:Ljava/util/List;

    if-eqz v0, :cond_11

    .line 1593
    invoke-virtual {p0}, Lcom/c/b/c/g;->o()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1594
    sget-object v0, Lcom/c/b/c/g;->q:Lorg/apache/c/b/b;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Lorg/apache/c/b/b;)V

    .line 1596
    new-instance v0, Lorg/apache/c/b/c;

    iget-object v1, p0, Lcom/c/b/c/g;->F:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v3, v1}, Lorg/apache/c/b/c;-><init>(BI)V

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Lorg/apache/c/b/c;)V

    .line 1597
    iget-object v0, p0, Lcom/c/b/c/g;->F:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1599
    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 1601
    :cond_10
    invoke-virtual {p1}, Lorg/apache/c/b/f;->g()V

    .line 1603
    invoke-virtual {p1}, Lorg/apache/c/b/f;->d()V

    .line 1606
    :cond_11
    invoke-virtual {p1}, Lorg/apache/c/b/f;->e()V

    .line 1607
    invoke-virtual {p1}, Lorg/apache/c/b/f;->c()V

    .line 1608
    return-void
.end method

.method public b(Z)V
    .locals 2

    .prologue
    .line 554
    iget-object v0, p0, Lcom/c/b/c/g;->G:[Z

    const/4 v1, 0x1

    aput-boolean p1, v0, v1

    .line 555
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/c/b/c/g;->s:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 650
    iput-object p1, p0, Lcom/c/b/c/g;->B:Ljava/lang/String;

    .line 651
    return-void
.end method

.method public c(Z)V
    .locals 2

    .prologue
    .line 576
    iget-object v0, p0, Lcom/c/b/c/g;->G:[Z

    const/4 v1, 0x2

    aput-boolean p1, v0, v1

    .line 577
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/c/b/c/g;->t:Ljava/lang/String;

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
    .line 153
    check-cast p1, Lcom/c/b/c/g;

    invoke-virtual {p0, p1}, Lcom/c/b/c/g;->b(Lcom/c/b/c/g;)I

    move-result v0

    return v0
.end method

.method public d(Z)V
    .locals 2

    .prologue
    .line 598
    iget-object v0, p0, Lcom/c/b/c/g;->G:[Z

    const/4 v1, 0x3

    aput-boolean p1, v0, v1

    .line 599
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/c/b/c/g;->u:[B

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
    .line 620
    iget-object v0, p0, Lcom/c/b/c/g;->G:[Z

    const/4 v1, 0x4

    aput-boolean p1, v0, v1

    .line 621
    return-void
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 528
    iget-object v0, p0, Lcom/c/b/c/g;->G:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1023
    if-nez p1, :cond_1

    .line 1027
    :cond_0
    :goto_0
    return v0

    .line 1025
    :cond_1
    instance-of v1, p1, Lcom/c/b/c/g;

    if-eqz v1, :cond_0

    .line 1026
    check-cast p1, Lcom/c/b/c/g;

    invoke-virtual {p0, p1}, Lcom/c/b/c/g;->a(Lcom/c/b/c/g;)Z

    move-result v0

    goto :goto_0
.end method

.method public f(Z)V
    .locals 2

    .prologue
    .line 642
    iget-object v0, p0, Lcom/c/b/c/g;->G:[Z

    const/4 v1, 0x5

    aput-boolean p1, v0, v1

    .line 643
    return-void
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 550
    iget-object v0, p0, Lcom/c/b/c/g;->G:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    return v0
.end method

.method public g()Z
    .locals 2

    .prologue
    .line 572
    iget-object v0, p0, Lcom/c/b/c/g;->G:[Z

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    return v0
.end method

.method public h()Z
    .locals 2

    .prologue
    .line 594
    iget-object v0, p0, Lcom/c/b/c/g;->G:[Z

    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1173
    const/4 v0, 0x0

    return v0
.end method

.method public i()Z
    .locals 2

    .prologue
    .line 616
    iget-object v0, p0, Lcom/c/b/c/g;->G:[Z

    const/4 v1, 0x4

    aget-boolean v0, v0, v1

    return v0
.end method

.method public j()Z
    .locals 2

    .prologue
    .line 638
    iget-object v0, p0, Lcom/c/b/c/g;->G:[Z

    const/4 v1, 0x5

    aget-boolean v0, v0, v1

    return v0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 659
    iget-object v0, p0, Lcom/c/b/c/g;->B:Ljava/lang/String;

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
    .line 697
    iget-object v0, p0, Lcom/c/b/c/g;->C:Ljava/util/List;

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
    .line 735
    iget-object v0, p0, Lcom/c/b/c/g;->D:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 758
    iget-object v0, p0, Lcom/c/b/c/g;->E:Lcom/c/b/c/i;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public o()Z
    .locals 1

    .prologue
    .line 796
    iget-object v0, p0, Lcom/c/b/c/g;->F:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public p()V
    .locals 0

    .prologue
    .line 1745
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1611
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "Note("

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1612
    const/4 v0, 0x1

    .line 1614
    invoke-virtual {p0}, Lcom/c/b/c/g;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1615
    const-string v0, "guid:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1616
    iget-object v0, p0, Lcom/c/b/c/g;->r:Ljava/lang/String;

    if-nez v0, :cond_1c

    .line 1617
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    move v0, v1

    .line 1623
    :cond_0
    invoke-virtual {p0}, Lcom/c/b/c/g;->b()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1624
    if-nez v0, :cond_1

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1625
    :cond_1
    const-string v0, "title:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1626
    iget-object v0, p0, Lcom/c/b/c/g;->s:Ljava/lang/String;

    if-nez v0, :cond_1d

    .line 1627
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    move v0, v1

    .line 1633
    :cond_2
    invoke-virtual {p0}, Lcom/c/b/c/g;->c()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1634
    if-nez v0, :cond_3

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1635
    :cond_3
    const-string v0, "content:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1636
    iget-object v0, p0, Lcom/c/b/c/g;->t:Ljava/lang/String;

    if-nez v0, :cond_1e

    .line 1637
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    move v0, v1

    .line 1643
    :cond_4
    invoke-virtual {p0}, Lcom/c/b/c/g;->d()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1644
    if-nez v0, :cond_5

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1645
    :cond_5
    const-string v0, "contentHash:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1646
    iget-object v0, p0, Lcom/c/b/c/g;->u:[B

    if-nez v0, :cond_1f

    .line 1647
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    move v0, v1

    .line 1653
    :cond_6
    invoke-virtual {p0}, Lcom/c/b/c/g;->e()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1654
    if-nez v0, :cond_7

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1655
    :cond_7
    const-string v0, "contentLength:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1656
    iget v0, p0, Lcom/c/b/c/g;->v:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v0, v1

    .line 1659
    :cond_8
    invoke-virtual {p0}, Lcom/c/b/c/g;->f()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1660
    if-nez v0, :cond_9

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1661
    :cond_9
    const-string v0, "created:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1662
    iget-wide v3, p0, Lcom/c/b/c/g;->w:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move v0, v1

    .line 1665
    :cond_a
    invoke-virtual {p0}, Lcom/c/b/c/g;->g()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1666
    if-nez v0, :cond_b

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1667
    :cond_b
    const-string v0, "updated:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1668
    iget-wide v3, p0, Lcom/c/b/c/g;->x:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move v0, v1

    .line 1671
    :cond_c
    invoke-virtual {p0}, Lcom/c/b/c/g;->h()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1672
    if-nez v0, :cond_d

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1673
    :cond_d
    const-string v0, "deleted:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1674
    iget-wide v3, p0, Lcom/c/b/c/g;->y:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move v0, v1

    .line 1677
    :cond_e
    invoke-virtual {p0}, Lcom/c/b/c/g;->i()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1678
    if-nez v0, :cond_f

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1679
    :cond_f
    const-string v0, "active:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1680
    iget-boolean v0, p0, Lcom/c/b/c/g;->z:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move v0, v1

    .line 1683
    :cond_10
    invoke-virtual {p0}, Lcom/c/b/c/g;->j()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1684
    if-nez v0, :cond_11

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1685
    :cond_11
    const-string v0, "updateSequenceNum:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1686
    iget v0, p0, Lcom/c/b/c/g;->A:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v0, v1

    .line 1689
    :cond_12
    invoke-virtual {p0}, Lcom/c/b/c/g;->k()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 1690
    if-nez v0, :cond_13

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1691
    :cond_13
    const-string v0, "notebookGuid:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1692
    iget-object v0, p0, Lcom/c/b/c/g;->B:Ljava/lang/String;

    if-nez v0, :cond_20

    .line 1693
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    move v0, v1

    .line 1699
    :cond_14
    invoke-virtual {p0}, Lcom/c/b/c/g;->l()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1700
    if-nez v0, :cond_15

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1701
    :cond_15
    const-string v0, "tagGuids:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1702
    iget-object v0, p0, Lcom/c/b/c/g;->C:Ljava/util/List;

    if-nez v0, :cond_21

    .line 1703
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    move v0, v1

    .line 1709
    :cond_16
    invoke-virtual {p0}, Lcom/c/b/c/g;->m()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1710
    if-nez v0, :cond_17

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1711
    :cond_17
    const-string v0, "resources:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1712
    iget-object v0, p0, Lcom/c/b/c/g;->D:Ljava/util/List;

    if-nez v0, :cond_22

    .line 1713
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_6
    move v0, v1

    .line 1719
    :cond_18
    invoke-virtual {p0}, Lcom/c/b/c/g;->n()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 1720
    if-nez v0, :cond_19

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1721
    :cond_19
    const-string v0, "attributes:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1722
    iget-object v0, p0, Lcom/c/b/c/g;->E:Lcom/c/b/c/i;

    if-nez v0, :cond_23

    .line 1723
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1729
    :goto_7
    invoke-virtual {p0}, Lcom/c/b/c/g;->o()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1730
    if-nez v1, :cond_1a

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1731
    :cond_1a
    const-string v0, "tagNames:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1732
    iget-object v0, p0, Lcom/c/b/c/g;->F:Ljava/util/List;

    if-nez v0, :cond_24

    .line 1733
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1739
    :cond_1b
    :goto_8
    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1740
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1619
    :cond_1c
    iget-object v0, p0, Lcom/c/b/c/g;->r:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1629
    :cond_1d
    iget-object v0, p0, Lcom/c/b/c/g;->s:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1639
    :cond_1e
    iget-object v0, p0, Lcom/c/b/c/g;->t:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 1649
    :cond_1f
    iget-object v0, p0, Lcom/c/b/c/g;->u:[B

    invoke-static {v0, v2}, Lorg/apache/c/c;->a([BLjava/lang/StringBuilder;)V

    goto/16 :goto_3

    .line 1695
    :cond_20
    iget-object v0, p0, Lcom/c/b/c/g;->B:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 1705
    :cond_21
    iget-object v0, p0, Lcom/c/b/c/g;->C:Ljava/util/List;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 1715
    :cond_22
    iget-object v0, p0, Lcom/c/b/c/g;->D:Ljava/util/List;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 1725
    :cond_23
    iget-object v0, p0, Lcom/c/b/c/g;->E:Lcom/c/b/c/i;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 1735
    :cond_24
    iget-object v0, p0, Lcom/c/b/c/g;->F:Ljava/util/List;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_25
    move v1, v0

    goto :goto_7
.end method
