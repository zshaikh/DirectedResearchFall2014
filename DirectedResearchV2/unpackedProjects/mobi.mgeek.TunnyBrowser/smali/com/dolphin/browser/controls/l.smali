.class Lcom/dolphin/browser/controls/l;
.super Ljava/lang/Object;
.source "GridLayout.java"


# static fields
.field static final synthetic e:Z


# instance fields
.field a:[Lcom/dolphin/browser/controls/i;

.field b:I

.field c:[[Lcom/dolphin/browser/controls/i;

.field d:[I

.field final synthetic f:[Lcom/dolphin/browser/controls/i;

.field final synthetic g:Lcom/dolphin/browser/controls/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1330
    const-class v0, Lcom/dolphin/browser/controls/GridLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/dolphin/browser/controls/l;->e:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/dolphin/browser/controls/k;[Lcom/dolphin/browser/controls/i;)V
    .locals 2

    .prologue
    .line 1330
    iput-object p1, p0, Lcom/dolphin/browser/controls/l;->g:Lcom/dolphin/browser/controls/k;

    iput-object p2, p0, Lcom/dolphin/browser/controls/l;->f:[Lcom/dolphin/browser/controls/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1331
    iget-object v0, p0, Lcom/dolphin/browser/controls/l;->f:[Lcom/dolphin/browser/controls/i;

    array-length v0, v0

    new-array v0, v0, [Lcom/dolphin/browser/controls/i;

    iput-object v0, p0, Lcom/dolphin/browser/controls/l;->a:[Lcom/dolphin/browser/controls/i;

    .line 1332
    iget-object v0, p0, Lcom/dolphin/browser/controls/l;->a:[Lcom/dolphin/browser/controls/i;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/dolphin/browser/controls/l;->b:I

    .line 1333
    iget-object v0, p0, Lcom/dolphin/browser/controls/l;->g:Lcom/dolphin/browser/controls/k;

    iget-object v1, p0, Lcom/dolphin/browser/controls/l;->f:[Lcom/dolphin/browser/controls/i;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/controls/k;->a([Lcom/dolphin/browser/controls/i;)[[Lcom/dolphin/browser/controls/i;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/controls/l;->c:[[Lcom/dolphin/browser/controls/i;

    .line 1334
    iget-object v0, p0, Lcom/dolphin/browser/controls/l;->g:Lcom/dolphin/browser/controls/k;

    invoke-virtual {v0}, Lcom/dolphin/browser/controls/k;->a()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/dolphin/browser/controls/l;->d:[I

    return-void
.end method


# virtual methods
.method a(I)V
    .locals 7

    .prologue
    .line 1337
    iget-object v0, p0, Lcom/dolphin/browser/controls/l;->d:[I

    aget v0, v0, p1

    packed-switch v0, :pswitch_data_0

    .line 1355
    :cond_0
    :goto_0
    return-void

    .line 1339
    :pswitch_0
    iget-object v0, p0, Lcom/dolphin/browser/controls/l;->d:[I

    const/4 v1, 0x1

    aput v1, v0, p1

    .line 1340
    iget-object v0, p0, Lcom/dolphin/browser/controls/l;->c:[[Lcom/dolphin/browser/controls/i;

    aget-object v1, v0, p1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 1341
    iget-object v4, v3, Lcom/dolphin/browser/controls/i;->a:Lcom/dolphin/browser/controls/n;

    iget v4, v4, Lcom/dolphin/browser/controls/n;->b:I

    invoke-virtual {p0, v4}, Lcom/dolphin/browser/controls/l;->a(I)V

    .line 1342
    iget-object v4, p0, Lcom/dolphin/browser/controls/l;->a:[Lcom/dolphin/browser/controls/i;

    iget v5, p0, Lcom/dolphin/browser/controls/l;->b:I

    add-int/lit8 v6, v5, -0x1

    iput v6, p0, Lcom/dolphin/browser/controls/l;->b:I

    aput-object v3, v4, v5

    .line 1340
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1344
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/controls/l;->d:[I

    const/4 v1, 0x2

    aput v1, v0, p1

    goto :goto_0

    .line 1348
    :pswitch_1
    sget-boolean v0, Lcom/dolphin/browser/controls/l;->e:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1337
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method a()[Lcom/dolphin/browser/controls/i;
    .locals 2

    .prologue
    .line 1358
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/dolphin/browser/controls/l;->c:[[Lcom/dolphin/browser/controls/i;

    array-length v1, v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 1359
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/controls/l;->a(I)V

    .line 1358
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1361
    :cond_0
    sget-boolean v0, Lcom/dolphin/browser/controls/l;->e:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/dolphin/browser/controls/l;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1362
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/controls/l;->a:[Lcom/dolphin/browser/controls/i;

    return-object v0
.end method
