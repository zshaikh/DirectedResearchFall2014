.class Lcom/facebook/orca/app/OrcaInjector$ContactPickerViewListAdapterProvider;
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
        "Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/OrcaInjector;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/OrcaInjector;)V
    .locals 0

    .prologue
    .line 913
    iput-object p1, p0, Lcom/facebook/orca/app/OrcaInjector$ContactPickerViewListAdapterProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V
    .locals 0

    .prologue
    .line 913
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/OrcaInjector$ContactPickerViewListAdapterProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;
    .locals 5

    .prologue
    .line 917
    new-instance v0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;

    iget-object v1, p0, Lcom/facebook/orca/app/OrcaInjector$ContactPickerViewListAdapterProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-static {v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Lcom/facebook/orca/app/OrcaInjector;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/orca/app/OrcaInjector$ContactPickerViewListAdapterProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v3, Lcom/facebook/orca/contacts/picker/ContactPickerNewListFilter;

    invoke-virtual {v2, v3}, Lcom/facebook/orca/app/OrcaInjector;->b(Ljava/lang/Class;)Lcom/google/inject/Provider;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/orca/app/OrcaInjector$ContactPickerViewListAdapterProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v4, Landroid/view/LayoutInflater;

    invoke-virtual {v3, v4}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/LayoutInflater;

    invoke-direct {v0, v1, v2, p0}, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;-><init>(Landroid/content/Context;Lcom/google/inject/Provider;Landroid/view/LayoutInflater;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 913
    invoke-virtual {p0}, Lcom/facebook/orca/app/OrcaInjector$ContactPickerViewListAdapterProvider;->a()Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;

    move-result-object v0

    return-object v0
.end method
