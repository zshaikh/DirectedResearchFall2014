.class public final enum Lcom/c/b/c/y;
.super Ljava/lang/Enum;
.source "Tag.java"


# static fields
.field public static final enum a:Lcom/c/b/c/y;

.field public static final enum b:Lcom/c/b/c/y;

.field public static final enum c:Lcom/c/b/c/y;

.field public static final enum d:Lcom/c/b/c/y;

.field private static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/c/b/c/y;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic h:[Lcom/c/b/c/y;


# instance fields
.field private final f:S

.field private final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 95
    new-instance v0, Lcom/c/b/c/y;

    const-string v1, "GUID"

    const-string v2, "guid"

    invoke-direct {v0, v1, v6, v3, v2}, Lcom/c/b/c/y;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/c/y;->a:Lcom/c/b/c/y;

    new-instance v0, Lcom/c/b/c/y;

    const-string v1, "NAME"

    const-string v2, "name"

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/c/b/c/y;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/c/y;->b:Lcom/c/b/c/y;

    new-instance v0, Lcom/c/b/c/y;

    const-string v1, "PARENT_GUID"

    const-string v2, "parentGuid"

    invoke-direct {v0, v1, v4, v5, v2}, Lcom/c/b/c/y;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/c/y;->c:Lcom/c/b/c/y;

    .line 96
    new-instance v0, Lcom/c/b/c/y;

    const-string v1, "UPDATE_SEQUENCE_NUM"

    const-string v2, "updateSequenceNum"

    invoke-direct {v0, v1, v5, v7, v2}, Lcom/c/b/c/y;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/c/y;->d:Lcom/c/b/c/y;

    .line 94
    new-array v0, v7, [Lcom/c/b/c/y;

    sget-object v1, Lcom/c/b/c/y;->a:Lcom/c/b/c/y;

    aput-object v1, v0, v6

    sget-object v1, Lcom/c/b/c/y;->b:Lcom/c/b/c/y;

    aput-object v1, v0, v3

    sget-object v1, Lcom/c/b/c/y;->c:Lcom/c/b/c/y;

    aput-object v1, v0, v4

    sget-object v1, Lcom/c/b/c/y;->d:Lcom/c/b/c/y;

    aput-object v1, v0, v5

    sput-object v0, Lcom/c/b/c/y;->h:[Lcom/c/b/c/y;

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/c/b/c/y;->e:Ljava/util/Map;

    .line 102
    const-class v0, Lcom/c/b/c/y;

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

    check-cast v0, Lcom/c/b/c/y;

    .line 103
    sget-object v2, Lcom/c/b/c/y;->e:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/c/b/c/y;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 105
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
    .line 149
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 150
    iput-short p3, p0, Lcom/c/b/c/y;->f:S

    .line 151
    iput-object p4, p0, Lcom/c/b/c/y;->g:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/c/b/c/y;
    .locals 1

    .prologue
    .line 94
    const-class v0, Lcom/c/b/c/y;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/c/b/c/y;

    return-object v0
.end method

.method public static values()[Lcom/c/b/c/y;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/c/b/c/y;->h:[Lcom/c/b/c/y;

    invoke-virtual {v0}, [Lcom/c/b/c/y;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/c/b/c/y;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/c/b/c/y;->g:Ljava/lang/String;

    return-object v0
.end method
