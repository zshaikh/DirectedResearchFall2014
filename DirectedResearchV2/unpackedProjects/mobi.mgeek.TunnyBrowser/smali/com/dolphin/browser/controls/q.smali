.class public Lcom/dolphin/browser/controls/q;
.super Ljava/lang/Object;
.source "GridLayout.java"


# static fields
.field static final a:Lcom/dolphin/browser/controls/q;


# instance fields
.field final b:Z

.field final c:Lcom/dolphin/browser/controls/n;

.field final d:Lcom/dolphin/browser/controls/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2298
    const/high16 v0, -0x80000000

    invoke-static {v0}, Lcom/dolphin/browser/controls/GridLayout;->e(I)Lcom/dolphin/browser/controls/q;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/controls/q;->a:Lcom/dolphin/browser/controls/q;

    return-void
.end method

.method private constructor <init>(ZIILcom/dolphin/browser/controls/h;)V
    .locals 2

    .prologue
    .line 2311
    new-instance v0, Lcom/dolphin/browser/controls/n;

    add-int v1, p2, p3

    invoke-direct {v0, p2, v1}, Lcom/dolphin/browser/controls/n;-><init>(II)V

    invoke-direct {p0, p1, v0, p4}, Lcom/dolphin/browser/controls/q;-><init>(ZLcom/dolphin/browser/controls/n;Lcom/dolphin/browser/controls/h;)V

    .line 2312
    return-void
.end method

.method synthetic constructor <init>(ZIILcom/dolphin/browser/controls/h;Lcom/dolphin/browser/controls/a;)V
    .locals 0

    .prologue
    .line 2297
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/dolphin/browser/controls/q;-><init>(ZIILcom/dolphin/browser/controls/h;)V

    return-void
.end method

.method private constructor <init>(ZLcom/dolphin/browser/controls/n;Lcom/dolphin/browser/controls/h;)V
    .locals 0

    .prologue
    .line 2304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2305
    iput-boolean p1, p0, Lcom/dolphin/browser/controls/q;->b:Z

    .line 2306
    iput-object p2, p0, Lcom/dolphin/browser/controls/q;->c:Lcom/dolphin/browser/controls/n;

    .line 2307
    iput-object p3, p0, Lcom/dolphin/browser/controls/q;->d:Lcom/dolphin/browser/controls/h;

    .line 2308
    return-void
.end method


# virtual methods
.method final a()I
    .locals 2

    .prologue
    .line 2323
    iget-object v0, p0, Lcom/dolphin/browser/controls/q;->d:Lcom/dolphin/browser/controls/h;

    sget-object v1, Lcom/dolphin/browser/controls/GridLayout;->i:Lcom/dolphin/browser/controls/h;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method final a(Lcom/dolphin/browser/controls/n;)Lcom/dolphin/browser/controls/q;
    .locals 3

    .prologue
    .line 2315
    new-instance v0, Lcom/dolphin/browser/controls/q;

    iget-boolean v1, p0, Lcom/dolphin/browser/controls/q;->b:Z

    iget-object v2, p0, Lcom/dolphin/browser/controls/q;->d:Lcom/dolphin/browser/controls/h;

    invoke-direct {v0, v1, p1, v2}, Lcom/dolphin/browser/controls/q;-><init>(ZLcom/dolphin/browser/controls/n;Lcom/dolphin/browser/controls/h;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2338
    if-ne p0, p1, :cond_1

    .line 2355
    :cond_0
    :goto_0
    return v0

    .line 2341
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 2342
    goto :goto_0

    .line 2345
    :cond_3
    check-cast p1, Lcom/dolphin/browser/controls/q;

    .line 2347
    iget-object v2, p0, Lcom/dolphin/browser/controls/q;->d:Lcom/dolphin/browser/controls/h;

    iget-object v3, p1, Lcom/dolphin/browser/controls/q;->d:Lcom/dolphin/browser/controls/h;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 2348
    goto :goto_0

    .line 2351
    :cond_4
    iget-object v2, p0, Lcom/dolphin/browser/controls/q;->c:Lcom/dolphin/browser/controls/n;

    iget-object v3, p1, Lcom/dolphin/browser/controls/q;->c:Lcom/dolphin/browser/controls/n;

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/controls/n;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 2352
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 2360
    iget-object v0, p0, Lcom/dolphin/browser/controls/q;->c:Lcom/dolphin/browser/controls/n;

    invoke-virtual {v0}, Lcom/dolphin/browser/controls/n;->hashCode()I

    move-result v0

    .line 2361
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/dolphin/browser/controls/q;->d:Lcom/dolphin/browser/controls/h;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 2362
    return v0
.end method
