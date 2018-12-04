.class Lnet/youmi/android/d;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lnet/youmi/android/aw;

.field private b:Lnet/youmi/android/o;

.field private c:Ljava/util/Stack;

.field private d:Lnet/youmi/android/em;

.field private e:Ljava/util/Stack;


# direct methods
.method constructor <init>(Lnet/youmi/android/aw;Lnet/youmi/android/o;)V
    .locals 1

    iput-object p1, p0, Lnet/youmi/android/d;->a:Lnet/youmi/android/aw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lnet/youmi/android/d;->c:Ljava/util/Stack;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lnet/youmi/android/d;->e:Ljava/util/Stack;

    iput-object p2, p0, Lnet/youmi/android/d;->b:Lnet/youmi/android/o;

    return-void
.end method


# virtual methods
.method a()Lnet/youmi/android/em;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/d;->d:Lnet/youmi/android/em;

    return-object v0
.end method

.method a(Lnet/youmi/android/em;)Lnet/youmi/android/em;
    .locals 2

    iget-object v0, p0, Lnet/youmi/android/d;->d:Lnet/youmi/android/em;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/d;->d:Lnet/youmi/android/em;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lnet/youmi/android/d;->c:Ljava/util/Stack;

    iget-object v1, p0, Lnet/youmi/android/d;->d:Lnet/youmi/android/em;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lnet/youmi/android/d;->e:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    iput-object p1, p0, Lnet/youmi/android/d;->d:Lnet/youmi/android/em;

    iget-object v0, p0, Lnet/youmi/android/d;->b:Lnet/youmi/android/o;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/youmi/android/d;->b:Lnet/youmi/android/o;

    invoke-interface {v0, p0}, Lnet/youmi/android/o;->a(Lnet/youmi/android/d;)V

    :cond_1
    iget-object v0, p0, Lnet/youmi/android/d;->d:Lnet/youmi/android/em;

    return-object v0
.end method

.method b()Lnet/youmi/android/em;
    .locals 3

    iget-object v0, p0, Lnet/youmi/android/d;->e:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lnet/youmi/android/d;->e:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/youmi/android/em;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lnet/youmi/android/d;->d:Lnet/youmi/android/em;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/youmi/android/d;->c:Ljava/util/Stack;

    iget-object v2, p0, Lnet/youmi/android/d;->d:Lnet/youmi/android/em;

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iput-object v0, p0, Lnet/youmi/android/d;->d:Lnet/youmi/android/em;

    iget-object v0, p0, Lnet/youmi/android/d;->b:Lnet/youmi/android/o;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/youmi/android/d;->b:Lnet/youmi/android/o;

    invoke-interface {v0, p0}, Lnet/youmi/android/o;->a(Lnet/youmi/android/d;)V

    :cond_1
    iget-object v0, p0, Lnet/youmi/android/d;->d:Lnet/youmi/android/em;

    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c()Lnet/youmi/android/em;
    .locals 3

    iget-object v0, p0, Lnet/youmi/android/d;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lnet/youmi/android/d;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/youmi/android/em;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lnet/youmi/android/d;->d:Lnet/youmi/android/em;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/youmi/android/d;->e:Ljava/util/Stack;

    iget-object v2, p0, Lnet/youmi/android/d;->d:Lnet/youmi/android/em;

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iput-object v0, p0, Lnet/youmi/android/d;->d:Lnet/youmi/android/em;

    iget-object v0, p0, Lnet/youmi/android/d;->b:Lnet/youmi/android/o;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/youmi/android/d;->b:Lnet/youmi/android/o;

    invoke-interface {v0, p0}, Lnet/youmi/android/o;->a(Lnet/youmi/android/d;)V

    :cond_1
    iget-object v0, p0, Lnet/youmi/android/d;->d:Lnet/youmi/android/em;

    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method d()Z
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/d;->d:Lnet/youmi/android/em;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method e()Z
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/d;->e:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method f()Z
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/d;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
