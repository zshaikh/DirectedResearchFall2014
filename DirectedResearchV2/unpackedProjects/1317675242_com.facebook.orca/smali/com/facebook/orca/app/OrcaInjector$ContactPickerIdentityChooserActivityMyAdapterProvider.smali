.class Lcom/facebook/orca/app/OrcaInjector$ContactPickerIdentityChooserActivityMyAdapterProvider;
.super Ljava/lang/Object;
.source "OrcaInjector.java"

# interfaces
.implements Lcom/google/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/inject/Provider",
        "<",
        "Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$MyAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/OrcaInjector;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/OrcaInjector;)V
    .locals 0

    .prologue
    .line 878
    iput-object p1, p0, Lcom/facebook/orca/app/OrcaInjector$ContactPickerIdentityChooserActivityMyAdapterProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V
    .locals 0

    .prologue
    .line 878
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/OrcaInjector$ContactPickerIdentityChooserActivityMyAdapterProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$MyAdapter;
    .locals 4

    .prologue
    .line 883
    new-instance v1, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$MyAdapter;

    iget-object v0, p0, Lcom/facebook/orca/app/OrcaInjector$ContactPickerIdentityChooserActivityMyAdapterProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v2, Landroid/view/LayoutInflater;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/facebook/orca/app/OrcaInjector$ContactPickerIdentityChooserActivityMyAdapterProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v3, Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/res/Resources;

    invoke-direct {v1, v0, p0}, Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$MyAdapter;-><init>(Landroid/view/LayoutInflater;Landroid/content/res/Resources;)V

    return-object v1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 878
    invoke-virtual {p0}, Lcom/facebook/orca/app/OrcaInjector$ContactPickerIdentityChooserActivityMyAdapterProvider;->a()Lcom/facebook/orca/contacts/picker/ContactPickerIdentityChooserActivity$MyAdapter;

    move-result-object v0

    return-object v0
.end method
