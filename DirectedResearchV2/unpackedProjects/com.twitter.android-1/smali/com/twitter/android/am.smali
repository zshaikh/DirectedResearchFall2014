.class final Lcom/twitter/android/am;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/twitter/android/MessagesThreadActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/MessagesThreadActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/am;->a:Lcom/twitter/android/MessagesThreadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/am;->a:Lcom/twitter/android/MessagesThreadActivity;

    invoke-virtual {v0}, Lcom/twitter/android/MessagesThreadActivity;->e()V

    return-void
.end method
