.class public final enum Lcom/c/b/b/d;
.super Ljava/lang/Enum;
.source "NoteStore.java"


# static fields
.field public static final enum a:Lcom/c/b/b/d;

.field public static final enum b:Lcom/c/b/b/d;

.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/c/b/b/d;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic f:[Lcom/c/b/b/d;


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

    .line 40641
    new-instance v0, Lcom/c/b/b/d;

    const-string v1, "AUTHENTICATION_TOKEN"

    const-string v2, "authenticationToken"

    invoke-direct {v0, v1, v4, v3, v2}, Lcom/c/b/b/d;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/b/d;->a:Lcom/c/b/b/d;

    .line 40642
    new-instance v0, Lcom/c/b/b/d;

    const-string v1, "NOTE"

    const-string v2, "note"

    invoke-direct {v0, v1, v3, v5, v2}, Lcom/c/b/b/d;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/c/b/b/d;->b:Lcom/c/b/b/d;

    .line 40640
    new-array v0, v5, [Lcom/c/b/b/d;

    sget-object v1, Lcom/c/b/b/d;->a:Lcom/c/b/b/d;

    aput-object v1, v0, v4

    sget-object v1, Lcom/c/b/b/d;->b:Lcom/c/b/b/d;

    aput-object v1, v0, v3

    sput-object v0, Lcom/c/b/b/d;->f:[Lcom/c/b/b/d;

    .line 40644
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/c/b/b/d;->c:Ljava/util/Map;

    .line 40647
    const-class v0, Lcom/c/b/b/d;

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

    check-cast v0, Lcom/c/b/b/d;

    .line 40648
    sget-object v2, Lcom/c/b/b/d;->c:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/c/b/b/d;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 40650
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
    .line 40686
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40687
    iput-short p3, p0, Lcom/c/b/b/d;->d:S

    .line 40688
    iput-object p4, p0, Lcom/c/b/b/d;->e:Ljava/lang/String;

    .line 40689
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/c/b/b/d;
    .locals 1

    .prologue
    .line 40640
    const-class v0, Lcom/c/b/b/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/c/b/b/d;

    return-object v0
.end method

.method public static values()[Lcom/c/b/b/d;
    .locals 1

    .prologue
    .line 40640
    sget-object v0, Lcom/c/b/b/d;->f:[Lcom/c/b/b/d;

    invoke-virtual {v0}, [Lcom/c/b/b/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/c/b/b/d;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40696
    iget-object v0, p0, Lcom/c/b/b/d;->e:Ljava/lang/String;

    return-object v0
.end method
