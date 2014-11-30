.class Lcom/mgeek/android/ui/bd;
.super Ljava/lang/Object;
.source "TabWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/mgeek/android/ui/TabWidget;

.field private final b:I


# direct methods
.method private constructor <init>(Lcom/mgeek/android/ui/TabWidget;I)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/mgeek/android/ui/bd;->a:Lcom/mgeek/android/ui/TabWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    iput p2, p0, Lcom/mgeek/android/ui/bd;->b:I

    .line 282
    return-void
.end method

.method synthetic constructor <init>(Lcom/mgeek/android/ui/TabWidget;ILcom/mgeek/android/ui/bb;)V
    .locals 0

    .prologue
    .line 276
    invoke-direct {p0, p1, p2}, Lcom/mgeek/android/ui/bd;-><init>(Lcom/mgeek/android/ui/TabWidget;I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 285
    iget-object v0, p0, Lcom/mgeek/android/ui/bd;->a:Lcom/mgeek/android/ui/TabWidget;

    invoke-static {v0}, Lcom/mgeek/android/ui/TabWidget;->a(Lcom/mgeek/android/ui/TabWidget;)Lcom/mgeek/android/ui/bc;

    move-result-object v0

    iget v1, p0, Lcom/mgeek/android/ui/bd;->b:I

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/mgeek/android/ui/bc;->a(IZ)V

    .line 286
    return-void
.end method
