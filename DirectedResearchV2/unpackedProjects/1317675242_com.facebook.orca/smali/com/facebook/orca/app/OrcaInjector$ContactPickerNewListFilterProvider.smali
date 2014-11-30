.class Lcom/facebook/orca/app/OrcaInjector$ContactPickerNewListFilterProvider;
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
        "Lcom/facebook/orca/contacts/picker/ContactPickerNewListFilter;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/OrcaInjector;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/OrcaInjector;)V
    .locals 0

    .prologue
    .line 890
    iput-object p1, p0, Lcom/facebook/orca/app/OrcaInjector$ContactPickerNewListFilterProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V
    .locals 0

    .prologue
    .line 890
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/OrcaInjector$ContactPickerNewListFilterProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/contacts/picker/ContactPickerNewListFilter;
    .locals 6

    .prologue
    .line 894
    new-instance v3, Lcom/facebook/orca/contacts/picker/ContactPickerNewListFilter;

    iget-object v0, p0, Lcom/facebook/orca/app/OrcaInjector$ContactPickerNewListFilterProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v1, Lcom/facebook/orca/users/FacebookUserIterator;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/FacebookUserIterator;

    iget-object v1, p0, Lcom/facebook/orca/app/OrcaInjector$ContactPickerNewListFilterProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v2, Lcom/facebook/orca/users/PhoneUserIterator;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/users/PhoneUserIterator;

    iget-object v2, p0, Lcom/facebook/orca/app/OrcaInjector$ContactPickerNewListFilterProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v4, Landroid/database/sqlite/SQLiteDatabase;

    const-class v5, Lcom/facebook/orca/annotations/UsersDb;

    invoke-virtual {v2, v4, v5}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/sqlite/SQLiteDatabase;

    iget-object v4, p0, Lcom/facebook/orca/app/OrcaInjector$ContactPickerNewListFilterProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v5, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v4, v5}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-direct {v3, v0, v1, v2, p0}, Lcom/facebook/orca/contacts/picker/ContactPickerNewListFilter;-><init>(Lcom/facebook/orca/users/FacebookUserIterator;Lcom/facebook/orca/users/PhoneUserIterator;Landroid/database/sqlite/SQLiteDatabase;Lcom/facebook/orca/prefs/OrcaSharedPreferences;)V

    return-object v3
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 890
    invoke-virtual {p0}, Lcom/facebook/orca/app/OrcaInjector$ContactPickerNewListFilterProvider;->a()Lcom/facebook/orca/contacts/picker/ContactPickerNewListFilter;

    move-result-object v0

    return-object v0
.end method
