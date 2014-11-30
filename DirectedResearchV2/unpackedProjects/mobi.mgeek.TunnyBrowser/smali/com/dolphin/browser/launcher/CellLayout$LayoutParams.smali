.class public Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "CellLayout.java"


# instance fields
.field public a:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public b:Z

.field private c:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private d:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private e:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private f:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 1030
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1012
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;->b:Z

    .line 1031
    iput p1, p0, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;->a:I

    .line 1032
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 1015
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1012
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;->b:Z

    .line 1016
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 1019
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1012
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;->b:Z

    .line 1020
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;)I
    .locals 1

    .prologue
    .line 953
    iget v0, p0, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;->d:I

    return v0
.end method

.method static synthetic a(Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;I)I
    .locals 0

    .prologue
    .line 953
    iput p1, p0, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;->c:I

    return p1
.end method

.method static synthetic b(Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;)I
    .locals 1

    .prologue
    .line 953
    iget v0, p0, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;->c:I

    return v0
.end method

.method static synthetic b(Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;I)I
    .locals 0

    .prologue
    .line 953
    iput p1, p0, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;->d:I

    return p1
.end method

.method static synthetic c(Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;)I
    .locals 1

    .prologue
    .line 953
    iget v0, p0, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;->e:I

    return v0
.end method

.method static synthetic c(Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;I)I
    .locals 0

    .prologue
    .line 953
    iput p1, p0, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;->e:I

    return p1
.end method

.method static synthetic d(Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;)I
    .locals 1

    .prologue
    .line 953
    iget v0, p0, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;->f:I

    return v0
.end method

.method static synthetic d(Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;I)I
    .locals 0

    .prologue
    .line 953
    iput p1, p0, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;->f:I

    return p1
.end method


# virtual methods
.method a()I
    .locals 1

    .prologue
    .line 981
    iget v0, p0, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;->c:I

    return v0
.end method

.method a(IIIIII)V
    .locals 2

    .prologue
    .line 1035
    iget-boolean v0, p0, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;->b:Z

    if-eqz v0, :cond_0

    .line 1036
    iput p1, p0, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;->width:I

    .line 1037
    iput p2, p0, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;->height:I

    .line 1038
    iget v0, p0, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;->c:I

    add-int/lit8 v0, v0, 0x1

    mul-int/2addr v0, p3

    iget v1, p0, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;->c:I

    mul-int/2addr v1, p1

    add-int/2addr v0, v1

    add-int/2addr v0, p5

    iput v0, p0, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;->e:I

    .line 1039
    iget v0, p0, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;->d:I

    add-int/lit8 v0, v0, 0x1

    mul-int/2addr v0, p4

    iget v1, p0, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;->d:I

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    add-int/2addr v0, p6

    iput v0, p0, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;->f:I

    .line 1041
    :cond_0
    return-void
.end method

.method b()I
    .locals 1

    .prologue
    .line 989
    iget v0, p0, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;->d:I

    return v0
.end method

.method c()I
    .locals 1

    .prologue
    .line 997
    iget v0, p0, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;->e:I

    return v0
.end method

.method d()I
    .locals 1

    .prologue
    .line 1005
    iget v0, p0, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;->f:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1044
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
