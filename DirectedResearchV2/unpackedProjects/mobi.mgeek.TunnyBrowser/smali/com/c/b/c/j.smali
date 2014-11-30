.class public final enum Lcom/c/b/c/j;
.super Ljava/lang/Enum;
.source "NoteAttributes.java"


# static fields
.field public static final enum a:Lcom/c/b/c/j;

.field public static final enum b:Lcom/c/b/c/j;

.field public static final enum c:Lcom/c/b/c/j;

.field public static final enum d:Lcom/c/b/c/j;

.field public static final enum e:Lcom/c/b/c/j;

.field public static final enum f:Lcom/c/b/c/j;

.field public static final enum g:Lcom/c/b/c/j;

.field public static final enum h:Lcom/c/b/c/j;

.field public static final enum i:Lcom/c/b/c/j;

.field public static final enum j:Lcom/c/b/c/j;

.field public static final enum k:Lcom/c/b/c/j;

.field public static final enum l:Lcom/c/b/c/j;

.field public static final enum m:Lcom/c/b/c/j;

.field private static final n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/c/b/c/j;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic q:[Lcom/c/b/c/j;


# instance fields
.field private final o:S

.field private final p:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0xc

    const/16 v7, 0xb

    const/16 v6, 0xa

    const/4 v5, 0x1

    .line 174
    new-instance v0, Lcom/c/b/c/j;

    const-string v1, "SUBJECT_DATE"

    const-string v2, "subjectDate"

    invoke-direct {v0, v1, v9, v5, v2}, Lcom/c/b/c/j;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/c/j;->a:Lcom/c/b/c/j;

    .line 175
    new-instance v0, Lcom/c/b/c/j;

    const-string v1, "LATITUDE"

    const-string v2, "latitude"

    invoke-direct {v0, v1, v5, v6, v2}, Lcom/c/b/c/j;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/c/j;->b:Lcom/c/b/c/j;

    .line 176
    new-instance v0, Lcom/c/b/c/j;

    const-string v1, "LONGITUDE"

    const/4 v2, 0x2

    const-string v3, "longitude"

    invoke-direct {v0, v1, v2, v7, v3}, Lcom/c/b/c/j;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/c/j;->c:Lcom/c/b/c/j;

    .line 177
    new-instance v0, Lcom/c/b/c/j;

    const-string v1, "ALTITUDE"

    const/4 v2, 0x3

    const-string v3, "altitude"

    invoke-direct {v0, v1, v2, v8, v3}, Lcom/c/b/c/j;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/c/j;->d:Lcom/c/b/c/j;

    .line 178
    new-instance v0, Lcom/c/b/c/j;

    const-string v1, "AUTHOR"

    const/4 v2, 0x4

    const/16 v3, 0xd

    const-string v4, "author"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/c/b/c/j;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/c/j;->e:Lcom/c/b/c/j;

    .line 179
    new-instance v0, Lcom/c/b/c/j;

    const-string v1, "SOURCE"

    const/4 v2, 0x5

    const/16 v3, 0xe

    const-string v4, "source"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/c/b/c/j;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/c/j;->f:Lcom/c/b/c/j;

    .line 180
    new-instance v0, Lcom/c/b/c/j;

    const-string v1, "SOURCE_URL"

    const/4 v2, 0x6

    const/16 v3, 0xf

    const-string v4, "sourceURL"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/c/b/c/j;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/c/j;->g:Lcom/c/b/c/j;

    .line 181
    new-instance v0, Lcom/c/b/c/j;

    const-string v1, "SOURCE_APPLICATION"

    const/4 v2, 0x7

    const/16 v3, 0x10

    const-string v4, "sourceApplication"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/c/b/c/j;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/c/j;->h:Lcom/c/b/c/j;

    .line 182
    new-instance v0, Lcom/c/b/c/j;

    const-string v1, "SHARE_DATE"

    const/16 v2, 0x8

    const/16 v3, 0x11

    const-string v4, "shareDate"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/c/b/c/j;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/c/j;->i:Lcom/c/b/c/j;

    .line 183
    new-instance v0, Lcom/c/b/c/j;

    const-string v1, "PLACE_NAME"

    const/16 v2, 0x9

    const/16 v3, 0x15

    const-string v4, "placeName"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/c/b/c/j;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/c/j;->j:Lcom/c/b/c/j;

    .line 184
    new-instance v0, Lcom/c/b/c/j;

    const-string v1, "CONTENT_CLASS"

    const/16 v2, 0x16

    const-string v3, "contentClass"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/c/b/c/j;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/c/j;->k:Lcom/c/b/c/j;

    .line 185
    new-instance v0, Lcom/c/b/c/j;

    const-string v1, "APPLICATION_DATA"

    const/16 v2, 0x17

    const-string v3, "applicationData"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/c/b/c/j;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/c/j;->l:Lcom/c/b/c/j;

    .line 186
    new-instance v0, Lcom/c/b/c/j;

    const-string v1, "LAST_EDITED_BY"

    const/16 v2, 0x18

    const-string v3, "lastEditedBy"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/c/b/c/j;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/c/j;->m:Lcom/c/b/c/j;

    .line 173
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/c/b/c/j;

    sget-object v1, Lcom/c/b/c/j;->a:Lcom/c/b/c/j;

    aput-object v1, v0, v9

    sget-object v1, Lcom/c/b/c/j;->b:Lcom/c/b/c/j;

    aput-object v1, v0, v5

    const/4 v1, 0x2

    sget-object v2, Lcom/c/b/c/j;->c:Lcom/c/b/c/j;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/c/b/c/j;->d:Lcom/c/b/c/j;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/c/b/c/j;->e:Lcom/c/b/c/j;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/c/b/c/j;->f:Lcom/c/b/c/j;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/c/b/c/j;->g:Lcom/c/b/c/j;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/c/b/c/j;->h:Lcom/c/b/c/j;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/c/b/c/j;->i:Lcom/c/b/c/j;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/c/b/c/j;->j:Lcom/c/b/c/j;

    aput-object v2, v0, v1

    sget-object v1, Lcom/c/b/c/j;->k:Lcom/c/b/c/j;

    aput-object v1, v0, v6

    sget-object v1, Lcom/c/b/c/j;->l:Lcom/c/b/c/j;

    aput-object v1, v0, v7

    sget-object v1, Lcom/c/b/c/j;->m:Lcom/c/b/c/j;

    aput-object v1, v0, v8

    sput-object v0, Lcom/c/b/c/j;->q:[Lcom/c/b/c/j;

    .line 188
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/c/b/c/j;->n:Ljava/util/Map;

    .line 191
    const-class v0, Lcom/c/b/c/j;

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

    check-cast v0, Lcom/c/b/c/j;

    .line 192
    sget-object v2, Lcom/c/b/c/j;->n:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/c/b/c/j;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 194
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
    .line 252
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 253
    iput-short p3, p0, Lcom/c/b/c/j;->o:S

    .line 254
    iput-object p4, p0, Lcom/c/b/c/j;->p:Ljava/lang/String;

    .line 255
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/c/b/c/j;
    .locals 1

    .prologue
    .line 173
    const-class v0, Lcom/c/b/c/j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/c/b/c/j;

    return-object v0
.end method

.method public static values()[Lcom/c/b/c/j;
    .locals 1

    .prologue
    .line 173
    sget-object v0, Lcom/c/b/c/j;->q:[Lcom/c/b/c/j;

    invoke-virtual {v0}, [Lcom/c/b/c/j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/c/b/c/j;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/c/b/c/j;->p:Ljava/lang/String;

    return-object v0
.end method
