.class final Lcom/twitter/android/a;
.super Lcom/twitter/android/client/f;


# instance fields
.field private synthetic a:Lcom/twitter/android/SearchTweetsActivity;


# direct methods
.method private constructor <init>(Lcom/twitter/android/SearchTweetsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/a;->a:Lcom/twitter/android/SearchTweetsActivity;

    invoke-direct {p0}, Lcom/twitter/android/client/f;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/android/SearchTweetsActivity;Lcom/twitter/android/ec;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/twitter/android/a;-><init>(Lcom/twitter/android/SearchTweetsActivity;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/a;->a:Lcom/twitter/android/SearchTweetsActivity;

    invoke-virtual {v0, p2}, Lcom/twitter/android/SearchTweetsActivity;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc8

    if-eq p3, v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/a;->a:Lcom/twitter/android/SearchTweetsActivity;

    const v1, 0x7f0b0128

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/twitter/android/a;->a:Lcom/twitter/android/SearchTweetsActivity;

    const/4 v1, 0x6

    iput v1, v0, Lcom/twitter/android/SearchTweetsActivity;->a:I

    :cond_0
    return-void
.end method

.method public final b(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/twitter/android/a;->a:Lcom/twitter/android/SearchTweetsActivity;

    invoke-virtual {v0, p2}, Lcom/twitter/android/SearchTweetsActivity;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc8

    if-eq p3, v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/a;->a:Lcom/twitter/android/SearchTweetsActivity;

    const v1, 0x7f0b0129

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/twitter/android/a;->a:Lcom/twitter/android/SearchTweetsActivity;

    iput v2, v0, Lcom/twitter/android/SearchTweetsActivity;->a:I

    :cond_0
    return-void
.end method
