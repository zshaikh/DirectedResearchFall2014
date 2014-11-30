.class public final enum Lcom/c/b/c/d;
.super Ljava/lang/Enum;
.source "Data.java"


# static fields
.field public static final enum a:Lcom/c/b/c/d;

.field public static final enum b:Lcom/c/b/c/d;

.field public static final enum c:Lcom/c/b/c/d;

.field private static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/c/b/c/d;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic g:[Lcom/c/b/c/d;


# instance fields
.field private final e:S

.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 65
    new-instance v0, Lcom/c/b/c/d;

    const-string v1, "BODY_HASH"

    const-string v2, "bodyHash"

    invoke-direct {v0, v1, v5, v3, v2}, Lcom/c/b/c/d;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/c/d;->a:Lcom/c/b/c/d;

    .line 66
    new-instance v0, Lcom/c/b/c/d;

    const-string v1, "SIZE"

    const-string v2, "size"

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/c/b/c/d;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/c/d;->b:Lcom/c/b/c/d;

    .line 67
    new-instance v0, Lcom/c/b/c/d;

    const-string v1, "BODY"

    const-string v2, "body"

    invoke-direct {v0, v1, v4, v6, v2}, Lcom/c/b/c/d;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/c/d;->c:Lcom/c/b/c/d;

    .line 64
    new-array v0, v6, [Lcom/c/b/c/d;

    sget-object v1, Lcom/c/b/c/d;->a:Lcom/c/b/c/d;

    aput-object v1, v0, v5

    sget-object v1, Lcom/c/b/c/d;->b:Lcom/c/b/c/d;

    aput-object v1, v0, v3

    sget-object v1, Lcom/c/b/c/d;->c:Lcom/c/b/c/d;

    aput-object v1, v0, v4

    sput-object v0, Lcom/c/b/c/d;->g:[Lcom/c/b/c/d;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/c/b/c/d;->d:Ljava/util/Map;

    .line 72
    const-class v0, Lcom/c/b/c/d;

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

    check-cast v0, Lcom/c/b/c/d;

    .line 73
    sget-object v2, Lcom/c/b/c/d;->d:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/c/b/c/d;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 75
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
    .line 113
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 114
    iput-short p3, p0, Lcom/c/b/c/d;->e:S

    .line 115
    iput-object p4, p0, Lcom/c/b/c/d;->f:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/c/b/c/d;
    .locals 1

    .prologue
    .line 64
    const-class v0, Lcom/c/b/c/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/c/b/c/d;

    return-object v0
.end method

.method public static values()[Lcom/c/b/c/d;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/c/b/c/d;->g:[Lcom/c/b/c/d;

    invoke-virtual {v0}, [Lcom/c/b/c/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/c/b/c/d;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/c/b/c/d;->f:Ljava/lang/String;

    return-object v0
.end method
