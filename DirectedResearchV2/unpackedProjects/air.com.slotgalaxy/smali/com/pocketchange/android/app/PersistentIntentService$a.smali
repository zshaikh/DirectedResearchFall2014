.class Lcom/pocketchange/android/app/PersistentIntentService$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pocketchange/android/app/PersistentIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/pocketchange/android/app/PersistentIntentService;

.field private final b:Landroid/content/Intent;


# direct methods
.method private constructor <init>(Lcom/pocketchange/android/app/PersistentIntentService;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/pocketchange/android/app/PersistentIntentService$a;->a:Lcom/pocketchange/android/app/PersistentIntentService;

    .line 102
    iput-object p2, p0, Lcom/pocketchange/android/app/PersistentIntentService$a;->b:Landroid/content/Intent;

    .line 103
    return-void
.end method

.method synthetic constructor <init>(Lcom/pocketchange/android/app/PersistentIntentService;Landroid/content/Intent;Lcom/pocketchange/android/app/PersistentIntentService$1;)V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Lcom/pocketchange/android/app/PersistentIntentService$a;-><init>(Lcom/pocketchange/android/app/PersistentIntentService;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/pocketchange/android/app/PersistentIntentService$a;->a:Lcom/pocketchange/android/app/PersistentIntentService;

    iget-object v1, p0, Lcom/pocketchange/android/app/PersistentIntentService$a;->b:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/pocketchange/android/app/PersistentIntentService;->onHandleCommand(Landroid/content/Intent;)V

    .line 107
    return-void
.end method
