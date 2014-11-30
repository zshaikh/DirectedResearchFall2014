.class public Lcom/dolphin/browser/launcher/az;
.super Ljava/lang/Object;
.source "FolderIcon.java"


# instance fields
.field public a:I

.field public b:I

.field public c:F

.field public d:Lcom/dolphin/browser/launcher/FolderIcon;

.field private e:Lcom/dolphin/browser/launcher/CellLayout;

.field private f:Z

.field private g:Lcom/g/a/an;

.field private h:Lcom/g/a/an;

.field private i:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/dolphin/browser/launcher/FolderIcon;)V
    .locals 1

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/launcher/az;->d:Lcom/dolphin/browser/launcher/FolderIcon;

    .line 143
    iput-object p2, p0, Lcom/dolphin/browser/launcher/az;->d:Lcom/dolphin/browser/launcher/FolderIcon;

    .line 144
    iput-object p1, p0, Lcom/dolphin/browser/launcher/az;->i:Landroid/content/Context;

    .line 145
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/launcher/az;)Lcom/dolphin/browser/launcher/CellLayout;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/dolphin/browser/launcher/az;->e:Lcom/dolphin/browser/launcher/CellLayout;

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/launcher/az;Z)Z
    .locals 0

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/dolphin/browser/launcher/az;->f:Z

    return p1
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 159
    iget-object v0, p0, Lcom/dolphin/browser/launcher/az;->h:Lcom/g/a/an;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/dolphin/browser/launcher/az;->h:Lcom/g/a/an;

    invoke-virtual {v0}, Lcom/g/a/an;->b()V

    .line 162
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/g/a/an;->b([F)Lcom/g/a/an;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/launcher/az;->g:Lcom/g/a/an;

    .line 163
    iget-object v0, p0, Lcom/dolphin/browser/launcher/az;->g:Lcom/g/a/an;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/g/a/an;->c(J)Lcom/g/a/an;

    .line 165
    iget-object v0, p0, Lcom/dolphin/browser/launcher/az;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/dolphin/browser/launcher/R$dimen;->icon_display_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 166
    iget-object v1, p0, Lcom/dolphin/browser/launcher/az;->g:Lcom/g/a/an;

    new-instance v2, Lcom/dolphin/browser/launcher/ba;

    invoke-direct {v2, p0, v0}, Lcom/dolphin/browser/launcher/ba;-><init>(Lcom/dolphin/browser/launcher/az;I)V

    invoke-virtual {v1, v2}, Lcom/g/a/an;->a(Lcom/g/a/au;)V

    .line 175
    iget-object v0, p0, Lcom/dolphin/browser/launcher/az;->g:Lcom/g/a/an;

    new-instance v1, Lcom/dolphin/browser/launcher/bb;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/launcher/bb;-><init>(Lcom/dolphin/browser/launcher/az;)V

    invoke-virtual {v0, v1}, Lcom/g/a/an;->a(Lcom/g/a/b;)V

    .line 184
    iget-object v0, p0, Lcom/dolphin/browser/launcher/az;->g:Lcom/g/a/an;

    invoke-virtual {v0}, Lcom/g/a/an;->a()V

    .line 185
    return-void

    .line 162
    :array_0
    .array-data 4
        0x0
        0x3f800000
    .end array-data
.end method

.method public a(II)V
    .locals 0

    .prologue
    .line 227
    iput p1, p0, Lcom/dolphin/browser/launcher/az;->a:I

    .line 228
    iput p2, p0, Lcom/dolphin/browser/launcher/az;->b:I

    .line 229
    return-void
.end method

.method public a(Lcom/dolphin/browser/launcher/CellLayout;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/dolphin/browser/launcher/az;->e:Lcom/dolphin/browser/launcher/CellLayout;

    .line 233
    return-void
.end method

.method public a(Lcom/dolphin/browser/launcher/FolderIcon;)V
    .locals 2

    .prologue
    .line 148
    iput-object p1, p0, Lcom/dolphin/browser/launcher/az;->d:Lcom/dolphin/browser/launcher/FolderIcon;

    .line 149
    if-eqz p1, :cond_0

    .line 150
    iget-boolean v0, p0, Lcom/dolphin/browser/launcher/az;->f:Z

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p1, Lcom/dolphin/browser/launcher/FolderIcon;->d:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    iget-object v0, p1, Lcom/dolphin/browser/launcher/FolderIcon;->d:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 188
    iget-object v0, p0, Lcom/dolphin/browser/launcher/az;->g:Lcom/g/a/an;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/dolphin/browser/launcher/az;->g:Lcom/g/a/an;

    invoke-virtual {v0}, Lcom/g/a/an;->b()V

    .line 191
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/g/a/an;->b([F)Lcom/g/a/an;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/launcher/az;->h:Lcom/g/a/an;

    .line 192
    iget-object v0, p0, Lcom/dolphin/browser/launcher/az;->h:Lcom/g/a/an;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/g/a/an;->c(J)Lcom/g/a/an;

    .line 194
    iget-object v0, p0, Lcom/dolphin/browser/launcher/az;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/dolphin/browser/launcher/R$dimen;->icon_display_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 195
    iget-object v1, p0, Lcom/dolphin/browser/launcher/az;->h:Lcom/g/a/an;

    new-instance v2, Lcom/dolphin/browser/launcher/bc;

    invoke-direct {v2, p0, v0}, Lcom/dolphin/browser/launcher/bc;-><init>(Lcom/dolphin/browser/launcher/az;I)V

    invoke-virtual {v1, v2}, Lcom/g/a/an;->a(Lcom/g/a/au;)V

    .line 204
    iget-object v0, p0, Lcom/dolphin/browser/launcher/az;->h:Lcom/g/a/an;

    new-instance v1, Lcom/dolphin/browser/launcher/bd;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/launcher/bd;-><init>(Lcom/dolphin/browser/launcher/az;)V

    invoke-virtual {v0, v1}, Lcom/g/a/an;->a(Lcom/g/a/b;)V

    .line 216
    iget-object v0, p0, Lcom/dolphin/browser/launcher/az;->h:Lcom/g/a/an;

    invoke-virtual {v0}, Lcom/g/a/an;->a()V

    .line 217
    return-void

    .line 191
    :array_0
    .array-data 4
        0x0
        0x3f800000
    .end array-data
.end method

.method public c()F
    .locals 1

    .prologue
    .line 236
    iget v0, p0, Lcom/dolphin/browser/launcher/az;->c:F

    return v0
.end method
