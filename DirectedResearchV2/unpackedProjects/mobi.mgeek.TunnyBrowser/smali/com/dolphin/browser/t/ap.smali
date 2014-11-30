.class Lcom/dolphin/browser/t/ap;
.super Ljava/lang/Object;
.source "TabUIManager.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/t/l;

.field private final b:Landroid/graphics/drawable/Drawable;

.field private final c:Ljava/lang/CharSequence;

.field private final d:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/t/l;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 567
    iput-object p1, p0, Lcom/dolphin/browser/t/ap;->a:Lcom/dolphin/browser/t/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 569
    iput-object p2, p0, Lcom/dolphin/browser/t/ap;->b:Landroid/graphics/drawable/Drawable;

    .line 570
    iput-object p3, p0, Lcom/dolphin/browser/t/ap;->c:Ljava/lang/CharSequence;

    .line 571
    iput-object p4, p0, Lcom/dolphin/browser/t/ap;->d:Ljava/lang/CharSequence;

    .line 572
    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lcom/dolphin/browser/t/ap;->b:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public b()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lcom/dolphin/browser/t/ap;->c:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public c()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, Lcom/dolphin/browser/t/ap;->d:Ljava/lang/CharSequence;

    return-object v0
.end method
