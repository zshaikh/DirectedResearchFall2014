.class Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryNameItemSelectedListener;
.super Ljava/lang/Object;
.source "EnterPhoneNumberActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic a:Lcom/facebook/orca/auth/EnterPhoneNumberActivity;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/auth/EnterPhoneNumberActivity;)V
    .locals 0

    .prologue
    .line 521
    iput-object p1, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryNameItemSelectedListener;->a:Lcom/facebook/orca/auth/EnterPhoneNumberActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/auth/EnterPhoneNumberActivity;Lcom/facebook/orca/auth/EnterPhoneNumberActivity$1;)V
    .locals 0

    .prologue
    .line 521
    invoke-direct {p0, p1}, Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryNameItemSelectedListener;-><init>(Lcom/facebook/orca/auth/EnterPhoneNumberActivity;)V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 524
    iget-object v0, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryNameItemSelectedListener;->a:Lcom/facebook/orca/auth/EnterPhoneNumberActivity;

    invoke-static {v0}, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->d(Lcom/facebook/orca/auth/EnterPhoneNumberActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 533
    :goto_0
    return-void

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryNameItemSelectedListener;->a:Lcom/facebook/orca/auth/EnterPhoneNumberActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->b(Lcom/facebook/orca/auth/EnterPhoneNumberActivity;Z)Z

    .line 529
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryNameItemSelectedListener;->a:Lcom/facebook/orca/auth/EnterPhoneNumberActivity;

    invoke-static {v0, p3}, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->a(Lcom/facebook/orca/auth/EnterPhoneNumberActivity;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 531
    iget-object v0, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryNameItemSelectedListener;->a:Lcom/facebook/orca/auth/EnterPhoneNumberActivity;

    invoke-static {v0, v2}, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->b(Lcom/facebook/orca/auth/EnterPhoneNumberActivity;Z)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryNameItemSelectedListener;->a:Lcom/facebook/orca/auth/EnterPhoneNumberActivity;

    invoke-static {v1, v2}, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->b(Lcom/facebook/orca/auth/EnterPhoneNumberActivity;Z)Z

    throw v0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 537
    return-void
.end method
