.class public Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;
.super Ljava/lang/Object;
.source "GraphicOpConstraintsBuilder.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Lcom/facebook/orca/photos/sizing/CropRegionConstraints;

.field private f:Lcom/facebook/orca/photos/sizing/CropRegionRectConstraints;

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/16 v0, 0x3c

    iput v0, p0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->a:I

    .line 11
    const/16 v0, 0x28

    iput v0, p0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->b:I

    .line 12
    const/16 v0, 0x78

    iput v0, p0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->c:I

    .line 13
    const/16 v0, 0x50

    iput v0, p0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->d:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->a:I

    return v0
.end method

.method public a(I)Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;
    .locals 0

    .prologue
    .line 23
    iput p1, p0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->a:I

    .line 24
    return-object p0
.end method

.method public a(Lcom/facebook/orca/photos/sizing/CropRegionConstraints;)Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->e:Lcom/facebook/orca/photos/sizing/CropRegionConstraints;

    .line 61
    return-object p0
.end method

.method public a(Lcom/facebook/orca/photos/sizing/CropRegionRectConstraints;)Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->f:Lcom/facebook/orca/photos/sizing/CropRegionRectConstraints;

    .line 71
    return-object p0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->b:I

    return v0
.end method

.method public b(I)Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;
    .locals 0

    .prologue
    .line 32
    iput p1, p0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->b:I

    .line 33
    return-object p0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->c:I

    return v0
.end method

.method public c(I)Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;
    .locals 0

    .prologue
    .line 41
    iput p1, p0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->c:I

    .line 42
    return-object p0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->d:I

    return v0
.end method

.method public d(I)Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;
    .locals 0

    .prologue
    .line 50
    iput p1, p0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->d:I

    .line 51
    return-object p0
.end method

.method public e()Lcom/facebook/orca/photos/sizing/CropRegionConstraints;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->e:Lcom/facebook/orca/photos/sizing/CropRegionConstraints;

    return-object v0
.end method

.method public f()Lcom/facebook/orca/photos/sizing/CropRegionRectConstraints;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->f:Lcom/facebook/orca/photos/sizing/CropRegionRectConstraints;

    return-object v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->g:Z

    return v0
.end method

.method public h()Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;
    .locals 1

    .prologue
    .line 84
    new-instance v0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

    invoke-direct {v0, p0}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;-><init>(Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;)V

    return-object v0
.end method
