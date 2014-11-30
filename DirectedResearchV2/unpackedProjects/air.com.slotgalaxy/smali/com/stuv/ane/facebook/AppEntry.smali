.class public Lcom/stuv/ane/facebook/AppEntry;
.super Landroid/app/Activity;
.source "AppEntry.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f040004

    if-ne v0, v1, :cond_1

    .line 56
    invoke-static {}, Lcom/stuv/ane/facebook/FacebookWrapper;->clearSession()V

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f040005

    if-ne v0, v1, :cond_2

    .line 60
    const-string v0, "email"

    invoke-static {v0}, Lcom/stuv/ane/facebook/FacebookWrapper;->authorise(Ljava/lang/String;)V

    goto :goto_0

    .line 62
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f040006

    if-ne v0, v1, :cond_3

    .line 64
    const-string v0, "me"

    const-string v1, "{fields:\"id\"}"

    invoke-static {v0, v1, v2, v2}, Lcom/stuv/ane/facebook/FacebookWrapper;->graph(Ljava/lang/String;Ljava/lang/String;ZI)V

    goto :goto_0

    .line 66
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f040007

    if-ne v0, v1, :cond_0

    .line 68
    const-string v0, "apprequests"

    const-string v1, "{to:[9215871,32306420],message:\"messagess\"}"

    invoke-static {v0, v1}, Lcom/stuv/ane/facebook/FacebookWrapper;->dialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const v4, 0x7f03000d

    invoke-virtual {p0, v4}, Lcom/stuv/ane/facebook/AppEntry;->setContentView(I)V

    .line 28
    const v4, 0x7f040004

    invoke-virtual {p0, v4}, Lcom/stuv/ane/facebook/AppEntry;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    const v4, 0x7f040005

    invoke-virtual {p0, v4}, Lcom/stuv/ane/facebook/AppEntry;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    const v4, 0x7f040006

    invoke-virtual {p0, v4}, Lcom/stuv/ane/facebook/AppEntry;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    const v4, 0x7f040007

    invoke-virtual {p0, v4}, Lcom/stuv/ane/facebook/AppEntry;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    const/4 v4, 0x0

    invoke-static {p0, v4}, Lcom/stuv/ane/facebook/FacebookWrapper;->init(Landroid/app/Activity;Lcom/adobe/fre/FREContext;)V

    .line 34
    const-string v4, "165134236907000"

    invoke-static {v4}, Lcom/stuv/ane/facebook/FacebookWrapper;->initialise(Ljava/lang/String;)V

    .line 38
    :try_start_0
    invoke-virtual {p0}, Lcom/stuv/ane/facebook/AppEntry;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.stuv.ane.facebook"

    const/16 v6, 0x40

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 39
    .local v0, "info":Landroid/content/pm/PackageInfo;
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v5, v4

    move v6, v7

    :goto_0
    if-lt v6, v5, :cond_0

    .line 50
    .end local v0    # "info":Landroid/content/pm/PackageInfo;
    :goto_1
    return-void

    .line 39
    .restart local v0    # "info":Landroid/content/pm/PackageInfo;
    :cond_0
    aget-object v3, v4, v6

    .line 40
    .local v3, "signature":Landroid/content/pm/Signature;
    const-string v7, "SHA"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 41
    .local v1, "md":Ljava/security/MessageDigest;
    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/security/MessageDigest;->update([B)V

    .line 42
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    .line 43
    .local v2, "sign":Ljava/lang/String;
    const-string v7, "MY KEY HASH:"

    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-virtual {p0}, Lcom/stuv/ane/facebook/AppEntry;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v7, v2, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 47
    .end local v0    # "info":Landroid/content/pm/PackageInfo;
    .end local v1    # "md":Ljava/security/MessageDigest;
    .end local v2    # "sign":Ljava/lang/String;
    .end local v3    # "signature":Landroid/content/pm/Signature;
    :catch_0
    move-exception v4

    goto :goto_1

    .line 46
    :catch_1
    move-exception v4

    goto :goto_1
.end method
