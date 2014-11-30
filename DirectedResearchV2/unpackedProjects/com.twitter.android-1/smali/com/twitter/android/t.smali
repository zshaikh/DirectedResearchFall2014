.class final Lcom/twitter/android/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/twitter/android/dh;


# direct methods
.method private constructor <init>(Lcom/twitter/android/dh;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/t;->a:Lcom/twitter/android/dh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/android/dh;Lcom/twitter/android/bf;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/twitter/android/t;-><init>(Lcom/twitter/android/dh;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/t;->a:Lcom/twitter/android/dh;

    invoke-virtual {v0, p1}, Lcom/twitter/android/dh;->a(Landroid/view/View;)V

    return-void
.end method
