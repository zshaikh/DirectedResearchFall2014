.class Lmobi/mgeek/preference/a;
.super Ljava/lang/Object;
.source "CustomeUserAgentPreference.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lmobi/mgeek/preference/CustomeUserAgentPreference;


# direct methods
.method constructor <init>(Lmobi/mgeek/preference/CustomeUserAgentPreference;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lmobi/mgeek/preference/a;->a:Lmobi/mgeek/preference/CustomeUserAgentPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lmobi/mgeek/preference/a;->a:Lmobi/mgeek/preference/CustomeUserAgentPreference;

    invoke-static {v0}, Lmobi/mgeek/preference/CustomeUserAgentPreference;->a(Lmobi/mgeek/preference/CustomeUserAgentPreference;)Landroid/widget/TextView;

    move-result-object v1

    .line 48
    if-eqz v1, :cond_0

    .line 49
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 51
    iget-object v0, p0, Lmobi/mgeek/preference/a;->a:Lmobi/mgeek/preference/CustomeUserAgentPreference;

    invoke-static {v0, v1}, Lmobi/mgeek/preference/CustomeUserAgentPreference;->a(Lmobi/mgeek/preference/CustomeUserAgentPreference;Landroid/widget/TextView;)V

    .line 54
    :cond_0
    return-void

    .line 49
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
