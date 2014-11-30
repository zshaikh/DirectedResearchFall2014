.class final enum Lc/a/a/d/n;
.super Ljava/lang/Enum;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Lc/a/a/d/s;
.implements Lc/a/a/d/w;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lc/a/a/d/n;",
        ">;",
        "Lc/a/a/d/s;",
        "Lc/a/a/d/w;"
    }
.end annotation


# static fields
.field public static final enum a:Lc/a/a/d/n;

.field static final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final c:I

.field private static final synthetic d:[Lc/a/a/d/n;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2547
    new-instance v1, Lc/a/a/d/n;

    const-string v2, "INSTANCE"

    invoke-direct {v1, v2, v0}, Lc/a/a/d/n;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lc/a/a/d/n;->a:Lc/a/a/d/n;

    .line 2544
    const/4 v1, 0x1

    new-array v1, v1, [Lc/a/a/d/n;

    sget-object v2, Lc/a/a/d/n;->a:Lc/a/a/d/n;

    aput-object v2, v1, v0

    sput-object v1, Lc/a/a/d/n;->d:[Lc/a/a/d/n;

    .line 2548
    invoke-static {}, Lc/a/a/i;->b()Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lc/a/a/d/n;->b:Ljava/util/Set;

    .line 2552
    sget-object v1, Lc/a/a/d/n;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2553
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v1, v0

    .line 2554
    goto :goto_0

    .line 2555
    :cond_0
    sput v1, Lc/a/a/d/n;->c:I

    .line 2556
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 2544
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lc/a/a/d/n;
    .locals 1

    .prologue
    .line 2544
    const-class v0, Lc/a/a/d/n;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lc/a/a/d/n;

    return-object v0
.end method

.method public static values()[Lc/a/a/d/n;
    .locals 1

    .prologue
    .line 2544
    sget-object v0, Lc/a/a/d/n;->d:[Lc/a/a/d/n;

    invoke-virtual {v0}, [Lc/a/a/d/n;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc/a/a/d/n;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 2559
    sget v0, Lc/a/a/d/n;->c:I

    return v0
.end method

.method public a(Lc/a/a/d/t;Ljava/lang/String;I)I
    .locals 6

    .prologue
    .line 2587
    invoke-virtual {p2, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 2588
    const/4 v1, 0x0

    .line 2589
    sget-object v0, Lc/a/a/d/n;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2590
    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2591
    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-le v4, v5, :cond_3

    :cond_0
    :goto_1
    move-object v1, v0

    .line 2595
    goto :goto_0

    .line 2596
    :cond_1
    if-eqz v1, :cond_2

    .line 2597
    invoke-static {v1}, Lc/a/a/i;->a(Ljava/lang/String;)Lc/a/a/i;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/d/t;->a(Lc/a/a/i;)V

    .line 2598
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p3

    .line 2600
    :goto_2
    return v0

    :cond_2
    xor-int/lit8 v0, p3, -0x1

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public a(Ljava/lang/StringBuffer;JLc/a/a/a;ILc/a/a/i;Ljava/util/Locale;)V
    .locals 1

    .prologue
    .line 2565
    if-eqz p6, :cond_0

    invoke-virtual {p6}, Lc/a/a/i;->c()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2566
    return-void

    .line 2565
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 2583
    sget v0, Lc/a/a/d/n;->c:I

    return v0
.end method
