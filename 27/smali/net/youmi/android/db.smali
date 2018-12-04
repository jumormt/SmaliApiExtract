.class Lnet/youmi/android/db;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lnet/youmi/android/c;


# direct methods
.method constructor <init>(Lnet/youmi/android/c;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/db;->a:Lnet/youmi/android/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
