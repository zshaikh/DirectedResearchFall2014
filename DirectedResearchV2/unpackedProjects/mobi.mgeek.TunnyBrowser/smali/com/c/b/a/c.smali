.class public final enum Lcom/c/b/a/c;
.super Ljava/lang/Enum;
.source "EDAMNotFoundException.java"


# static fields
.field public static final enum a:Lcom/c/b/a/c;

.field public static final enum b:Lcom/c/b/a/c;

.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/c/b/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic f:[Lcom/c/b/a/c;


# instance fields
.field private final d:S

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 46
    new-instance v0, Lcom/c/b/a/c;

    const-string v1, "IDENTIFIER"

    const-string v2, "identifier"

    invoke-direct {v0, v1, v4, v3, v2}, Lcom/c/b/a/c;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/a/c;->a:Lcom/c/b/a/c;

    .line 47
    new-instance v0, Lcom/c/b/a/c;

    const-string v1, "KEY"

    const-string v2, "key"

    invoke-direct {v0, v1, v3, v5, v2}, Lcom/c/b/a/c;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/a/c;->b:Lcom/c/b/a/c;

    .line 45
    new-array v0, v5, [Lcom/c/b/a/c;

    sget-object v1, Lcom/c/b/a/c;->a:Lcom/c/b/a/c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/c/b/a/c;->b:Lcom/c/b/a/c;

    aput-object v1, v0, v3

    sput-object v0, Lcom/c/b/a/c;->f:[Lcom/c/b/a/c;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/c/b/a/c;->c:Ljava/util/Map;

    .line 52
    const-class v0, Lcom/c/b/a/c;

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

    check-cast v0, Lcom/c/b/a/c;

    .line 53
    sget-object v2, Lcom/c/b/a/c;->c:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/c/b/a/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 55
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
    .line 91
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 92
    iput-short p3, p0, Lcom/c/b/a/c;->d:S

    .line 93
    iput-object p4, p0, Lcom/c/b/a/c;->e:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/c/b/a/c;
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/c/b/a/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/c/b/a/c;

    return-object v0
.end method

.method public static values()[Lcom/c/b/a/c;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/c/b/a/c;->f:[Lcom/c/b/a/c;

    invoke-virtual {v0}, [Lcom/c/b/a/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/c/b/a/c;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/c/b/a/c;->e:Ljava/lang/String;

    return-object v0
.end method
