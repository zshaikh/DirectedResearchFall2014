.class public final enum Lcom/c/b/c/u;
.super Ljava/lang/Enum;
.source "ResourceAttributes.java"


# static fields
.field public static final enum a:Lcom/c/b/c/u;

.field public static final enum b:Lcom/c/b/c/u;

.field public static final enum c:Lcom/c/b/c/u;

.field public static final enum d:Lcom/c/b/c/u;

.field public static final enum e:Lcom/c/b/c/u;

.field public static final enum f:Lcom/c/b/c/u;

.field public static final enum g:Lcom/c/b/c/u;

.field public static final enum h:Lcom/c/b/c/u;

.field public static final enum i:Lcom/c/b/c/u;

.field public static final enum j:Lcom/c/b/c/u;

.field public static final enum k:Lcom/c/b/c/u;

.field public static final enum l:Lcom/c/b/c/u;

.field private static final m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/c/b/c/u;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic p:[Lcom/c/b/c/u;


# instance fields
.field private final n:S

.field private final o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 136
    new-instance v0, Lcom/c/b/c/u;

    const-string v1, "SOURCE_URL"

    const/4 v2, 0x0

    const-string v3, "sourceURL"

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/c/b/c/u;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/c/u;->a:Lcom/c/b/c/u;

    .line 137
    new-instance v0, Lcom/c/b/c/u;

    const-string v1, "TIMESTAMP"

    const-string v2, "timestamp"

    invoke-direct {v0, v1, v5, v6, v2}, Lcom/c/b/c/u;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/c/u;->b:Lcom/c/b/c/u;

    .line 138
    new-instance v0, Lcom/c/b/c/u;

    const-string v1, "LATITUDE"

    const-string v2, "latitude"

    invoke-direct {v0, v1, v6, v7, v2}, Lcom/c/b/c/u;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/c/u;->c:Lcom/c/b/c/u;

    .line 139
    new-instance v0, Lcom/c/b/c/u;

    const-string v1, "LONGITUDE"

    const-string v2, "longitude"

    invoke-direct {v0, v1, v7, v8, v2}, Lcom/c/b/c/u;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/c/u;->d:Lcom/c/b/c/u;

    .line 140
    new-instance v0, Lcom/c/b/c/u;

    const-string v1, "ALTITUDE"

    const-string v2, "altitude"

    invoke-direct {v0, v1, v8, v9, v2}, Lcom/c/b/c/u;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/c/u;->e:Lcom/c/b/c/u;

    .line 141
    new-instance v0, Lcom/c/b/c/u;

    const-string v1, "CAMERA_MAKE"

    const/4 v2, 0x6

    const-string v3, "cameraMake"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/c/b/c/u;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/c/u;->f:Lcom/c/b/c/u;

    .line 142
    new-instance v0, Lcom/c/b/c/u;

    const-string v1, "CAMERA_MODEL"

    const/4 v2, 0x6

    const/4 v3, 0x7

    const-string v4, "cameraModel"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/c/b/c/u;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/c/u;->g:Lcom/c/b/c/u;

    .line 143
    new-instance v0, Lcom/c/b/c/u;

    const-string v1, "CLIENT_WILL_INDEX"

    const/4 v2, 0x7

    const/16 v3, 0x8

    const-string v4, "clientWillIndex"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/c/b/c/u;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/c/u;->h:Lcom/c/b/c/u;

    .line 144
    new-instance v0, Lcom/c/b/c/u;

    const-string v1, "RECO_TYPE"

    const/16 v2, 0x8

    const/16 v3, 0x9

    const-string v4, "recoType"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/c/b/c/u;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/c/u;->i:Lcom/c/b/c/u;

    .line 145
    new-instance v0, Lcom/c/b/c/u;

    const-string v1, "FILE_NAME"

    const/16 v2, 0x9

    const/16 v3, 0xa

    const-string v4, "fileName"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/c/b/c/u;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/c/u;->j:Lcom/c/b/c/u;

    .line 146
    new-instance v0, Lcom/c/b/c/u;

    const-string v1, "ATTACHMENT"

    const/16 v2, 0xa

    const/16 v3, 0xb

    const-string v4, "attachment"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/c/b/c/u;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/c/u;->k:Lcom/c/b/c/u;

    .line 147
    new-instance v0, Lcom/c/b/c/u;

    const-string v1, "APPLICATION_DATA"

    const/16 v2, 0xb

    const/16 v3, 0xc

    const-string v4, "applicationData"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/c/b/c/u;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/c/u;->l:Lcom/c/b/c/u;

    .line 135
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/c/b/c/u;

    const/4 v1, 0x0

    sget-object v2, Lcom/c/b/c/u;->a:Lcom/c/b/c/u;

    aput-object v2, v0, v1

    sget-object v1, Lcom/c/b/c/u;->b:Lcom/c/b/c/u;

    aput-object v1, v0, v5

    sget-object v1, Lcom/c/b/c/u;->c:Lcom/c/b/c/u;

    aput-object v1, v0, v6

    sget-object v1, Lcom/c/b/c/u;->d:Lcom/c/b/c/u;

    aput-object v1, v0, v7

    sget-object v1, Lcom/c/b/c/u;->e:Lcom/c/b/c/u;

    aput-object v1, v0, v8

    sget-object v1, Lcom/c/b/c/u;->f:Lcom/c/b/c/u;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/c/b/c/u;->g:Lcom/c/b/c/u;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/c/b/c/u;->h:Lcom/c/b/c/u;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/c/b/c/u;->i:Lcom/c/b/c/u;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/c/b/c/u;->j:Lcom/c/b/c/u;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/c/b/c/u;->k:Lcom/c/b/c/u;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/c/b/c/u;->l:Lcom/c/b/c/u;

    aput-object v2, v0, v1

    sput-object v0, Lcom/c/b/c/u;->p:[Lcom/c/b/c/u;

    .line 149
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/c/b/c/u;->m:Ljava/util/Map;

    .line 152
    const-class v0, Lcom/c/b/c/u;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/b/c/u;

    .line 153
    sget-object v2, Lcom/c/b/c/u;->m:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/c/b/c/u;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 155
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 211
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 212
    iput-short p3, p0, Lcom/c/b/c/u;->n:S

    .line 213
    iput-object p4, p0, Lcom/c/b/c/u;->o:Ljava/lang/String;

    .line 214
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/c/b/c/u;
    .locals 1

    .prologue
    .line 135
    const-class v0, Lcom/c/b/c/u;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/c/b/c/u;

    return-object v0
.end method

.method public static values()[Lcom/c/b/c/u;
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/c/b/c/u;->p:[Lcom/c/b/c/u;

    invoke-virtual {v0}, [Lcom/c/b/c/u;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/c/b/c/u;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/c/b/c/u;->o:Ljava/lang/String;

    return-object v0
.end method
