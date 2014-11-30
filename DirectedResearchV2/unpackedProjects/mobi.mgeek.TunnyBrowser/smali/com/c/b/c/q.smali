.class public final enum Lcom/c/b/c/q;
.super Ljava/lang/Enum;
.source "Publishing.java"


# static fields
.field public static final enum a:Lcom/c/b/c/q;

.field public static final enum b:Lcom/c/b/c/q;

.field public static final enum c:Lcom/c/b/c/q;

.field public static final enum d:Lcom/c/b/c/q;

.field private static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/c/b/c/q;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic h:[Lcom/c/b/c/q;


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

    .line 92
    new-instance v0, Lcom/c/b/c/q;

    const-string v1, "URI"

    const-string v2, "uri"

    invoke-direct {v0, v1, v6, v3, v2}, Lcom/c/b/c/q;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/c/q;->a:Lcom/c/b/c/q;

    .line 97
    new-instance v0, Lcom/c/b/c/q;

    const-string v1, "ORDER"

    const-string v2, "order"

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/c/b/c/q;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/c/q;->b:Lcom/c/b/c/q;

    new-instance v0, Lcom/c/b/c/q;

    const-string v1, "ASCENDING"

    const-string v2, "ascending"

    invoke-direct {v0, v1, v4, v5, v2}, Lcom/c/b/c/q;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/c/q;->c:Lcom/c/b/c/q;

    new-instance v0, Lcom/c/b/c/q;

    const-string v1, "PUBLIC_DESCRIPTION"

    const-string v2, "publicDescription"

    invoke-direct {v0, v1, v5, v7, v2}, Lcom/c/b/c/q;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/c/q;->d:Lcom/c/b/c/q;

    .line 91
    new-array v0, v7, [Lcom/c/b/c/q;

    sget-object v1, Lcom/c/b/c/q;->a:Lcom/c/b/c/q;

    aput-object v1, v0, v6

    sget-object v1, Lcom/c/b/c/q;->b:Lcom/c/b/c/q;

    aput-object v1, v0, v3

    sget-object v1, Lcom/c/b/c/q;->c:Lcom/c/b/c/q;

    aput-object v1, v0, v4

    sget-object v1, Lcom/c/b/c/q;->d:Lcom/c/b/c/q;

    aput-object v1, v0, v5

    sput-object v0, Lcom/c/b/c/q;->h:[Lcom/c/b/c/q;

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/c/b/c/q;->e:Ljava/util/Map;

    .line 103
    const-class v0, Lcom/c/b/c/q;

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

    check-cast v0, Lcom/c/b/c/q;

    .line 104
    sget-object v2, Lcom/c/b/c/q;->e:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/c/b/c/q;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 106
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
    .line 150
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 151
    iput-short p3, p0, Lcom/c/b/c/q;->f:S

    .line 152
    iput-object p4, p0, Lcom/c/b/c/q;->g:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/c/b/c/q;
    .locals 1

    .prologue
    .line 91
    const-class v0, Lcom/c/b/c/q;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/c/b/c/q;

    return-object v0
.end method

.method public static values()[Lcom/c/b/c/q;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/c/b/c/q;->h:[Lcom/c/b/c/q;

    invoke-virtual {v0}, [Lcom/c/b/c/q;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/c/b/c/q;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/c/b/c/q;->g:Ljava/lang/String;

    return-object v0
.end method
