part of './login_view.dart';

class _LoginButton extends StatelessWidget {
  const _LoginButton({
    Key? key,
    required GlobalKey<FormState> formLoginKey,
    required TextEditingController emailController,
    required TextEditingController passwordController,
    required String loginText,
  })  : _formLoginKey = formLoginKey,
        _emailController = emailController,
        _passwordController = passwordController,
        _loginText = loginText,
        super(key: key);

  final GlobalKey<FormState> _formLoginKey;
  final TextEditingController _emailController;
  final TextEditingController _passwordController;
  final String _loginText;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state.isCompleted) {
          context.navigateToPage(const ImageLearn202());
        }
      },
      builder: (context, state) {
        return BlocBuilder<LoginCubit, LoginState>(
          builder: (context, state) {
            return ElevatedButton(
                onPressed: () {
                  if (_formLoginKey.currentState?.validate() ?? false) {
                    context.read<LoginCubit>().checkUser(_emailController.text, _passwordController.text);
                  }
                },
                child: Padding(
                  padding: const PagePadding.all(),
                  child: Text('$_loginText - ${state.model?.email ?? ''}'),
                ));
          },
        );
      },
    );
  }
}

class _LoginEmailFields extends StatelessWidget {
  const _LoginEmailFields(
      {Key? key, required TextEditingController controller, required TextEditingController passowrdController})
      : _emailController = controller,
        _passwordController = passowrdController,
        super(key: key);

  final TextEditingController _emailController;
  final TextEditingController _passwordController;
  @override
  Widget build(BuildContext context) {
    return BlocSelector<LoginCubit, LoginState, bool>(
      selector: (state) {
        return state.isLoading;
      },
      builder: (context, state) {
        return IgnorePointer(
          ignoring: state,
          child: AnimatedOpacity(
            duration: context.durationLow,
            opacity: state ? 0.3 : 1,
            child: Column(
              children: [
                Padding(
                  padding: const PagePadding.bottom(),
                  child: TextFormField(
                    controller: _emailController,
                    decoration: const InputDecoration(labelText: 'Email'),
                    validator: (String? data) => (data?.isValidEmail ?? false) ? null : 'Problem',
                  ),
                ),
                Padding(
                  padding: const PagePadding.bottom(),
                  child: TextFormField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: const InputDecoration(labelText: 'Password'),
                    validator: (String? data) => ((data?.length ?? 0) > 6) ? null : 'Problem',
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
